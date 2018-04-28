import PropTypes from 'prop-types'
import React from 'react'

class NewTracker extends React.Component {
  onClick(e) {
    const { onClick } = this.props
    onClick(e)
  }

  render() {
    return(
      <a href="#" onClick={this.onClick.bind(this)} className="btn btn-primary new-tracker">
        new
      </a>
    )
  }
}

class CreateTracker extends React.Component {
  render() {
    return(
      <form>
        <input type="text" className="new-tracker-name" />
        <a href="#" onClick={this.props.onClick} className="btn btn-primary btn-lng new-tracker-create">
          create
        </a>
      </form>
    )
  }
}

export default class Tracker extends React.Component {
  constructor(props, _railsContext) {
    super(props)
    this.state = { mounted: true };
  }

  handleNew = (e) => {
		this.setState({ mounted: false })
		e.preventDefault()
	}

  handleCreate = (e) => {
		this.setState({ mounted: true })
		e.preventDefault()
	}

  render() {
    var child

    if(this.state.mounted) {
      child = (<NewTracker onClick={this.handleNew} />)
    } else {
      child = (<CreateTracker onClick={this.handleCreate} />)
    }

    return (
      <div>
        {child}
      </div>
    )
  }
}
