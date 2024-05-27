const axios = require('axios');

describe('Получение факта о котах', () => {

  it('Отправка GET запроса и проверка параметров ответа', async () => {
    const response = await axios.get(`https://catfact.ninja/fact`);

    expect(response.status).toBe(200)
    expect(response.statusText).toBe("OK")
    expect(response.data.fact).not.toBeNull()
    expect(response.data.length).toBe(response.data.fact.length)
    
  });
});
