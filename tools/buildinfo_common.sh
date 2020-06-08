#!/bin/bash

partition="$1"

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <partition>" 1>&2
  exit 1
fi

echo "#################################"
echo "# autogenerated by $0"
echo "#################################"

echo "ro.${partition}.build.date=`$DATE`"
echo "ro.${partition}.build.date.utc=`$DATE +%s`"
echo "ro.${partition}.build.fingerprint=$BUILD_FINGERPRINT"
echo "ro.${partition}.build.id=$BUILD_ID"
echo "ro.${partition}.build.tags=$BUILD_VERSION_TAGS"
echo "ro.${partition}.build.type=$TARGET_BUILD_TYPE"
echo "ro.${partition}.build.version.incremental=$BUILD_NUMBER"
echo "ro.${partition}.build.version.release=$PLATFORM_VERSION_LAST_STABLE"
echo "ro.${partition}.build.version.release_or_codename=$PLATFORM_VERSION"
echo "ro.${partition}.build.version.sdk=$PLATFORM_SDK_VERSION"

echo "ro.product.${partition}.brand=$PRODUCT_BRAND"
echo "ro.product.${partition}.device=$PRODUCT_DEVICE"
echo "ro.product.${partition}.manufacturer=$PRODUCT_MANUFACTURER"
echo "ro.product.${partition}.model=$PRODUCT_MODEL"
echo "ro.product.${partition}.name=$PRODUCT_NAME"
