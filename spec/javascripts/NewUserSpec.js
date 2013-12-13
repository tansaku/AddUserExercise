describe('Jasmine sanity check', function() {
  beforeEach(function(){
    jasmine.getFixtures().fixturesPath = 'public/users/';
    loadFixtures('new.html');
  });
  it('can grab a fixture', function() {  
    var username = $('input[name="Username"]');
    expect(username.text()).toEqual(''); 
    username.val('Jon');
    var password = $('input[name="Password"]');
    expect(password.text()).toEqual(''); 
    password.val('123');
    var button = $('button');
    button.click();
    var div = $('div#new_user');
    expect(div.text()).toEqual('New User: Jon'); 
  });
});