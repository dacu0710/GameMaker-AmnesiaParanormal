// scr_draw_rich_text.gml

/// @function draw_rich_text
/// @description 특정 태그 ([color=R,G,B], [/color], [b], [/b], \n)를 사용하여 텍스트를 그립니다.
/// @param {real} _x              텍스트 시작 X 좌표
/// @param {real} _y              텍스트 시작 Y 좌표
/// @param {string} _text         그릴 문자열 (예: "Hello [color=255,0,0]Red[/color] and [b]Bold[/b] World!\nNew Line.")
/// @param {real} _default_r      기본 텍스트 색상 R (0-255)
/// @param {real} _default_g      기본 텍스트 색상 G (0-255)
/// @param {real} _default_b      기본 텍스트 색상 B (0-255)
/// @param {real} _default_alpha  기본 텍스트 투명도 (0-1)
/// @param {asset} _font_normal   기본/일반 스타일 폰트 리소스 (예: fnt_game_text)
/// @param {asset} _font_bold     굵게 스타일 폰트 리소스 (예: fnt_game_text_bold)

function DrawScript(_x, _y, _text)
{

    // 기본 폰트 및 색상 설정
    //draw_set_font(_font_normal); // 항상 일반 폰트 사용
    draw_set_colour(make_color_rgb(255, 255, 255));
    //draw_set_alpha(_default_alpha);
    draw_set_halign(fa_left); // 리치 텍스트는 보통 왼쪽 정렬이 제어하기 쉬움
    draw_set_valign(fa_top);

    // 파싱을 위한 변수
    var _current_x = _x;
    var _current_y = _y;
    var _text_remaining = _text;
    var _is_bold = false;

    // 현재 폰트와 색상 스택 (중첩 태그를 지원하기 위함)
    //var _font_stack = ds_stack_create();
    var _color_stack = ds_stack_create();

    // 기본 폰트와 색상을 스택에 푸시
    //ds_stack_push(_font_stack, _font_normal);
    ds_stack_push(_color_stack, draw_get_colour());

    while (string_length(_text_remaining) > 0)
    {
        var _next_tag_start = string_length(_text_remaining) + 1; // 다음 태그의 가장 빠른 시작 위치
        var _tag_name = ""; // 찾은 태그의 이름
        var _tag_value = ""; // 태그의 값 (예: color= 의 RGB)
        var _tag_type = 0; // 1: color, 2: b, 3: /color, 4: /b, 5: \n

        // [color=R,G,B] 태그 찾기
        var _color_open_pos = string_pos("[color=", _text_remaining);
        if (_color_open_pos > 0 && _color_open_pos < _next_tag_start) {
            _next_tag_start = _color_open_pos;
            _tag_name = "[color=";
            _tag_type = 1;
        }

        // [/color] 태그 찾기
        var _color_close_pos = string_pos("[/color]", _text_remaining);
        if (_color_close_pos > 0 && _color_close_pos < _next_tag_start) {
            _next_tag_start = _color_close_pos;
            _tag_name = "[/color]";
            _tag_type = 3;
        }

        // [b] 태그 찾기
        var _bold_open_pos = string_pos("[b]", _text_remaining);
        if (_bold_open_pos > 0 && _bold_open_pos < _next_tag_start) {
            _next_tag_start = _bold_open_pos;
            _tag_name = "[b]";
            _tag_type = 2;
        }

        // [/b] 태그 찾기
        var _bold_close_pos = string_pos("[/b]", _text_remaining);
        if (_bold_close_pos > 0 && _bold_close_pos < _next_tag_start) {
            _next_tag_start = _bold_close_pos;
            _tag_name = "[/b]";
            _tag_type = 4;
        }

        // \n (줄 바꿈) 문자 찾기
        var _newline_pos = string_pos("\n", _text_remaining);
        if (_newline_pos > 0 && _newline_pos < _next_tag_start) {
            _next_tag_start = _newline_pos;
            _tag_name = "\n";
            _tag_type = 5;
        }

        // --- 태그 이전의 일반 텍스트 그리기 ---
        var _plain_text = "";
        if (_next_tag_start > 1) { // 다음 태그가 문자열 시작이 아니면
            _plain_text = string_copy(_text_remaining, 1, _next_tag_start - 1);
        }

        if (string_length(_plain_text) > 0) {
            draw_text(_current_x, _current_y, _plain_text);
            _current_x += string_width(_plain_text); // 다음 텍스트의 시작 X 좌표 업데이트
        }

        // --- 태그 처리 ---
        if (_tag_type != 0) // 태그를 찾았다면
        {
            _text_remaining = string_delete(_text_remaining, 1, _next_tag_start - 1 + string_length(_tag_name)); // 태그 및 이전 텍스트 삭제

            switch (_tag_type)
            {
                case 1: // [color=R,G,B]
                    var _end_bracket_pos = string_pos("]", _text_remaining);
                    if (_end_bracket_pos > 0) {
                        _tag_value = string_copy(_text_remaining, 1, _end_bracket_pos - 1);
                        _text_remaining = string_delete(_text_remaining, 1, _end_bracket_pos);

                        var _rgb_values = string_split(_tag_value, ",");
                        if (is_array(_rgb_values) && array_length(_rgb_values) == 3) {
                            var _new_color = make_color_rgb(real(_rgb_values[0]), real(_rgb_values[1]), real(_rgb_values[2]));
                            ds_stack_push(_color_stack, _new_color);
                            draw_set_colour(_new_color);
                        }
                    }
                    break;

                case 3: // [/color]
                    if (ds_stack_size(_color_stack) > 1) { // 기본 색상은 팝하지 않음
                        ds_stack_pop(_color_stack);
                    }
                    draw_set_colour(ds_stack_top(_color_stack));
                    break;

                case 2: // [b]
                    _is_bold = true;
                    //ds_stack_push(_font_stack, _font_bold); // 굵은 폰트 푸시
                    //draw_set_font(_font_bold);
                    break;

                case 4: // [/b]
                    _is_bold = false;
                   // if (ds_stack_size(_font_stack) > 1) { // 기본 폰트는 팝하지 않음
                    //    ds_stack_pop(_font_stack);
                    //}
                   // draw_set_font(ds_stack_top(_font_stack));
                    break;

                case 5: // \n (줄 바꿈)
                    _current_y += string_height("A"); // 한 줄 높이만큼 Y 이동 (대략적인 값)
                    _current_x = _x; // X 좌표는 시작 지점으로 리셋
                    break;
            }
        }
        else // 더 이상 태그가 없으면 나머지 텍스트 그리기
        {
            //draw_text(_current_x, _current_y, _text_remaining);
            _text_remaining = ""; // 루프 종료
        }
    }

    // 데이터 구조 정리
    //ds_stack_destroy(_font_stack);
    ds_stack_destroy(_color_stack);
}