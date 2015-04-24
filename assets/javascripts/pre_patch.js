jsToolBar.prototype.elements.pre = {
    type: 'button',
    title: 'Preformatted text',
    fn: {
        wiki: function () {
            this.encloseLineSelection('```\n', '\n```')
        }
    }
}

