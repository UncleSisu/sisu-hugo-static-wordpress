module.exports = class Md {
  constructor (WP_URL) {
    this.WP_URL = WP_URL;
  }

  constructMarkdown(instructions) {
    return instructions.endpoint.indexOf('page') > -1 ?
      {
        title: instructions.content.post_name,
        date: instructions.content.post_date,
        description: `${this.WP_URL}/${this.inferEndpoint(instructions)}`,
        type: null,
        markdown : `
      +++
      title = ${instructions.content.post_name}
      date = ${instructions.content.post_date}
      description = "${this.WP_URL}/${this.inferEndpoint(instructions)}"
      draft = false
      type = ""
      menu = "main"
      weight = 1
      +++
    `
      }
     :
      null;
  }

  inferEndpoint(instructions) {
    let beginUrlConstruction = false;
    return instructions.content.guid
      .split('/')
      .filter((partial) => {
        if (partial === 'wordpress') {
          beginUrlConstruction = true;
        }
        return beginUrlConstruction && partial !== 'wordpress';
      })
      .join('/');
  }
}
