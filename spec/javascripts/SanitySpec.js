describe('Jasmine sanity check', function() {
  beforeEach(function(){
  	jasmine.getFixtures().fixturesPath = 'public/users/';
  	loadFixtures('new.html');
  });
  it('can grab a fixture', function() {  
  	var username = $('input[name="Username"]');
    expect(username).toHaveText(''); 
  });
});