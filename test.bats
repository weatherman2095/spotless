#!/usr/bin/env bats



assert_ok() {
    printf '%s' "$1" | ./spotless
}

assert_fail() {
    ! assert_ok "$1"
}


@test "true keyword"        { assert_ok 'true'; }
@test "false keyword"       { assert_ok 'false'; }
@test "null keyword"        { assert_ok 'null'; }
@test "number '0'"          { assert_ok '0'; }
@test "number '-0'"         { assert_fail '-0'; }
@test "number '1'"          { assert_ok '1'; }
@test "number '2'"          { assert_ok '2'; }
@test "number '3'"          { assert_ok '3'; }
@test "number '4'"          { assert_ok '4'; }
@test "number '5'"          { assert_ok '5'; }
@test "number '6'"          { assert_ok '6'; }
@test "number '7'"          { assert_ok '7'; }
@test "number '8'"          { assert_ok '8'; }
@test "number '9'"          { assert_ok '9'; }
@test "number '12'"         { assert_ok '12'; }
@test "number '123'"        { assert_ok '123'; }
@test "number '1234'"       { assert_ok '1234'; }
@test "number '12345'"      { assert_ok '12345'; }
@test "number '123456'"     { assert_ok '123456'; }
@test "number '1234567'"    { assert_ok '1234567'; }
@test "number '-1'"         { assert_ok '-1'; }
@test "number '-2'"         { assert_ok '-2'; }
@test "number '-3'"         { assert_ok '-3'; }
@test "number '-4'"         { assert_ok '-4'; }
@test "number '-5'"         { assert_ok '-5'; }
@test "number '-6'"         { assert_ok '-6'; }
@test "number '-7'"         { assert_ok '-7'; }
@test "number '-8'"         { assert_ok '-8'; }
@test "number '-9'"         { assert_ok '-9'; }
@test "number '-12'"        { assert_ok '-12'; }
@test "number '-123'"       { assert_ok '-123'; }
@test "number '-1234'"      { assert_ok '-1234'; }
@test "number '-12345'"     { assert_ok '-12345'; }
@test "number '-123456'"    { assert_ok '-123456'; }
@test "number '-1234567'"   { assert_ok '-1234567'; }
@test "number '1.0'"        { assert_ok '1.0'; }
@test "number '1.01'"       { assert_ok '1.01'; }
@test "number '1.012345'"   { assert_ok '1.012345'; }
@test "number '1.012345'"   { assert_ok '1.012345'; }
@test "number '-1.0'"       { assert_ok '-1.0'; }
@test "number '-1.01'"      { assert_ok '-1.01'; }
@test "number '-1.012345'"  { assert_ok '-1.012345'; }
@test "number '-1.012345'"  { assert_ok '-1.012345'; }
@test "number '1e10'"       { assert_ok '1e10'; }
@test "number '1E10'"       { assert_ok '1E10'; }
@test "number '1e+10'"      { assert_ok '1e+10'; }
@test "number '1E+10'"      { assert_ok '1E+10'; }
@test "number '1e-10'"      { assert_ok '1e-10'; }
@test "number '1E-10'"      { assert_ok '1E-10'; }
@test "number '1.1234e10'"  { assert_ok '1.1234e10'; }
@test "number '1.1234E10'"  { assert_ok '1.1234E10'; }
@test "number '1.1234e+10'" { assert_ok '1.1234e+10'; }
@test "number '1.1234E+10'" { assert_ok '1.1234E+10'; }
@test "number '1.1234e-10'" { assert_ok '1.1234e-10'; }
@test "number '1.1234E-10'" { assert_ok '1.1234E-10'; }