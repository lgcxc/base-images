#/bin/bash

set -x
image_group="ccr.ccs.tencentyun.com/sampsonliu"
base_dir=$(cd "$(dirname "$0")";pwd)

version=`sed '/^VERSION=/!d;s/.*=//' ${base_dir}/version`

echo "local version is ${version}"

image_name="npm"
dockerfile="${base_dir}/alpine.dockerfile"
echo "build ${image_name}:${version}" \
&& docker build --pull -t ${image_group}/${image_name}:${version} -f ${dockerfile} ${base_dir} \
&& docker push ${image_group}/${image_name}:${version} \
&& echo "build ${image_name} finish"
