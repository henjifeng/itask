# jsx
类似xml的语法   用来描述组件树
必须是驼峰命名  不能和js命名冲突

## jsx嵌入变量

var x = 'http://baidu.com';
var y = <a href={x} target="_blank">


可以通过{...obj}来批量设置一个对象的键值对到组件的属性，需要注意顺序
var obj = {
	href:"http://baidu.com",
	target:"_blank"
}

var y = <a {...obj}> baidu.com </a>;
React.render(y, document.getElementById('container'))



# EVENT 事件
绑定事件来监听dom
React 内聚事件
避免了传统html的全局变量污染


# 组合
可以像原声dom组件一样使用自定义的组件

自定义组件中可以通过this.props.children访问自定义组件的子节点


可以通过给props设定默认值
getDefaultProps() {
	title:"default"
}

propTypes效验属性值
propTypes: {
	title:React.propTypes.string,
}

# State 状态
getInitialState: function(){
	return {bianliang: 0};
}

改变状态的值  
this.setState({bianliang: this.state.bianliang + 1 } );






# Mixin 混合 共享行为
var mixin = {
	propTypes: {
		title:React.propTypes.string,
	},
	getDefaultProps() {
		return {
			title:"default"
			};
	},
};


var A = React.createClass({
	mixins: [mixin],
	render(){
		return <i>{this.props.title} </i>
	}	
})


# 有值没值  受控组件  不受控组件   不设定value属性


React入门   https://yq.aliyun.com/edu/lesson/play/753


