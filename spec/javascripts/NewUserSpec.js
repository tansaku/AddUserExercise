describe('Jasmine sanity check', function() {
  beforeEach(function(){
    jasmine.getFixtures().fixturesPath = 'public/users/';
    loadFixtures('new.html');
  });
  it('can grab a fixture', function() {  
    var username = $('input[name="Username"]');
    expect(username).toHaveText(''); 
    username.val('Jon');
    var password = $('input[name="Password"]');
    expect(password).toHaveText(''); 
    password.val('123');
    var button = $('button');
    button.click();
    var div = $('div#new_user');
    expect(div).toHaveText('New User: Jon'); 
  });
});