require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get muro" do
    get usuarios_muro_url
    assert_response :success
  end

  test "should get perfil" do
    get usuarios_perfil_url
    assert_response :success
  end

  test "should get amigos" do
    get usuarios_amigos_url
    assert_response :success
  end

end
