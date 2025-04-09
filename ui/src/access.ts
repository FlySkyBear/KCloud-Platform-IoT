export default (initialState: any) => {
	// 在这里按照初始化数据定义项目中的权限，统一管理
	// 参考文档 https://umijs.org/docs/max/access
	return {
		initialState,
	};
};

export function setToken(
	access_token: string,
	refresh_token: string,
): void {
	localStorage.setItem('access_token', access_token);
	localStorage.setItem('refresh_token', refresh_token);
}

export function getAccessToken() {
	return localStorage.getItem('access_token');
}

export function getRefreshToken() {
	return localStorage.getItem('refresh_token');
}

export function clearToken() {
	localStorage.removeItem('access_token');
	localStorage.removeItem('refresh_token');
}
