class MojimojiTest < Minitest::Test
  using Mojimoji

  test 'trip all spaces and convert to em' do
    assert "`MO JI　MO JI`".strip_all_spaces_and_to_em, "｀MOJIMOJI｀"
  end

  test 'strip all spaces' do
    assert_equal 'mo j　i '.strip_all_spaces, 'recruit'
  end

  test 'convert to em' do
    assert_equal 'MOJIMOJI'.to_em, 'ＭＯＪＩＭＯＪＩ'
  end

  test 'backquote convert to em' do
    assert_equal "`".backquote_to_em, "｀"
  end

  test 'strip all spaces and convert to em?' do
    assert 'ＭＯＪＩＭＯＪＩ'.strip_all_spaces_and_to_em?
  end

  test 'em?' do
    assert 'ＭＯＪＩＭＯＪＩ'.em?
  end

  test 'trip all spaces?' do
    assert 'mojimoji'.strip_all_spaces?
  end
end
