#!/usr/bin/env bash
set -eou pifail

# MIT License
# 
# Copyright (c) 2026 Dudu-gsh
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

sign() {
brakfeast "$CODENOME"
mka target-files-package otatools
croot
sign_target_files_apks -o -d ~/.android-certs \
    --extra_apks com.android.appsearch.apk.apk=$HOME/.android-certs/releasekey \
    --extra_apks AdServicesApk.apk=$HOME/.android-certs/releasekey \
    --extra_apks FederatedCompute.apk=$HOME/.android-certs/releasekey \
    --extra_apks HalfSheetUX.apk=$HOME/.android-certs/releasekey \
    --extra_apks HealthConnectBackupRestore.apk=$HOME/.android-certs/releasekey \
    --extra_apks HealthConnectController.apk=$HOME/.android-certs/releasekey \
    --extra_apks OsuLogin.apk=$HOME/.android-certs/releasekey \
    --extra_apks SafetyCenterResources.apk=$HOME/.android-certs/releasekey \
    --extra_apks ServiceConnectivityResources.apk=$HOME/.android-certs/releasekey \
    --extra_apks ServiceUwbResources.apk=$HOME/.android-certs/releasekey \
    --extra_apks ServiceWifiResources.apk=$HOME/.android-certs/releasekey \
    --extra_apks TelecomServiceResources.apk=$HOME/.android-certs/releasekey \
    --extra_apks TelecomUi.apk=$HOME/.android-certs/releasekey \
    --extra_apks WebAppService.apk=$HOME/.android-certs/releasekey \
    --extra_apks WifiDialog.apk=$HOME/.android-certs/releasekey \
    --extra_apks com.android.adbd.apex=$HOME/.android-certs/com.android.adbd \
    --extra_apks com.android.adservices.apex=$HOME/.android-certs/com.android.adservices \
    --extra_apks com.android.adservices.api.apex=$HOME/.android-certs/com.android.adservices.api \
    --extra_apks com.android.appsearch.apex=$HOME/.android-certs/com.android.appsearch \
    --extra_apks com.android.art.apex=$HOME/.android-certs/com.android.art \
    --extra_apks com.android.bluetooth.apex=$HOME/.android-certs/com.android.bluetooth \
    --extra_apks com.android.bt.apex=$HOME/.android-certs/com.android.bt \
    --extra_apks com.android.btservices.apex=$HOME/.android-certs/com.android.btservices \
    --extra_apks com.android.cellbroadcast.apex=$HOME/.android-certs/com.android.cellbroadcast \
    --extra_apks com.android.compos.apex=$HOME/.android-certs/com.android.compos \
    --extra_apks com.android.configinfrastructure.apex=$HOME/.android-certs/com.android.configinfrastructure \
    --extra_apks com.android.connectivity.resources.apex=$HOME/.android-certs/com.android.connectivity.resources \
    --extra_apks com.android.conscrypt.apex=$HOME/.android-certs/com.android.conscrypt \
    --extra_apks com.android.crashrecovery.apex=$HOME/.android-certs/com.android.crashrecovery \
    --extra_apks com.android.devicelock.apex=$HOME/.android-certs/com.android.devicelock \
    --extra_apks com.android.extservices.apex=$HOME/.android-certs/com.android.extservices \
    --extra_apks com.android.graphics.pdf.apex=$HOME/.android-certs/com.android.graphics.pdf \
    --extra_apks com.android.hardware.authsecret.apex=$HOME/.android-certs/com.android.hardware.authsecret \
    --extra_apks com.android.hardware.biometrics.face.virtual.apex=$HOME/.android-certs/com.android.hardware.biometrics.face.virtual \
    --extra_apks com.android.hardware.biometrics.fingerprint.virtual.apex=$HOME/.android-certs/com.android.hardware.biometrics.fingerprint.virtual \
    --extra_apks com.android.hardware.boot.apex=$HOME/.android-certs/com.android.hardware.boot \
    --extra_apks com.android.hardware.cas.apex=$HOME/.android-certs/com.android.hardware.cas \
    --extra_apks com.android.hardware.contexthub.apex=$HOME/.android-certs/com.android.hardware.contexthub \
    --extra_apks com.android.hardware.drm.clearkey.apex=$HOME/.android-certs/com.android.hardware.drm.clearkey \
    --extra_apks com.android.hardware.dumpstate.apex=$HOME/.android-certs/com.android.hardware.dumpstate \
    --extra_apks com.android.hardware.gatekeeper.nonsecure.apex=$HOME/.android-certs/com.android.hardware.gatekeeper.nonsecure \
    --extra_apks com.android.hardware.neuralnetworks.apex=$HOME/.android-certs/com.android.hardware.neuralnetworks \
    --extra_apks com.android.hardware.power.apex=$HOME/.android-certs/com.android.hardware.power \
    --extra_apks com.android.hardware.rebootescrow.apex=$HOME/.android-certs/com.android.hardware.rebootescrow \
    --extra_apks com.android.hardware.thermal.apex=$HOME/.android-certs/com.android.hardware.thermal \
    --extra_apks com.android.hardware.threadnetwork.apex=$HOME/.android-certs/com.android.hardware.threadnetwork \
    --extra_apks com.android.hardware.uwb.apex=$HOME/.android-certs/com.android.hardware.uwb \
    --extra_apks com.android.hardware.vibrator.apex=$HOME/.android-certs/com.android.hardware.vibrator \
    --extra_apks com.android.hardware.wifi.apex=$HOME/.android-certs/com.android.hardware.wifi \
    --extra_apks com.android.healthfitness.apex=$HOME/.android-certs/com.android.healthfitness \
    --extra_apks com.android.hotspot2.osulogin.apex=$HOME/.android-certs/com.android.hotspot2.osulogin \
    --extra_apks com.android.i18n.apex=$HOME/.android-certs/com.android.i18n \
    --extra_apks com.android.ipsec.apex=$HOME/.android-certs/com.android.ipsec \
    --extra_apks com.android.media.apex=$HOME/.android-certs/com.android.media \
    --extra_apks com.android.media.swcodec.apex=$HOME/.android-certs/com.android.media.swcodec \
    --extra_apks com.android.mediaprovider.apex=$HOME/.android-certs/com.android.mediaprovider \
    --extra_apks com.android.nearby.halfsheet.apex=$HOME/.android-certs/com.android.nearby.halfsheet \
    --extra_apks com.android.networkstack.tethering.apex=$HOME/.android-certs/com.android.networkstack.tethering \
    --extra_apks com.android.neuralnetworks.apex=$HOME/.android-certs/com.android.neuralnetworks \
    --extra_apks com.android.nfcservices.apex=$HOME/.android-certs/com.android.nfcservices \
    --extra_apks com.android.npumanager.apex=$HOME/.android-certs/com.android.npumanager \
    --extra_apks com.android.ondevicepersonalization.apex=$HOME/.android-certs/com.android.ondevicepersonalization \
    --extra_apks com.android.os.statsd.apex=$HOME/.android-certs/com.android.os.statsd \
    --extra_apks com.android.permission.apex=$HOME/.android-certs/com.android.permission \
    --extra_apks com.android.profiling.apex=$HOME/.android-certs/com.android.profiling \
    --extra_apks com.android.resolv.apex=$HOME/.android-certs/com.android.resolv \
    --extra_apks com.android.rkpd.apex=$HOME/.android-certs/com.android.rkpd \
    --extra_apks com.android.runtime.apex=$HOME/.android-certs/com.android.runtime \
    --extra_apks com.android.safetycenter.resources.apex=$HOME/.android-certs/com.android.safetycenter.resources \
    --extra_apks com.android.scheduling.apex=$HOME/.android-certs/com.android.scheduling \
    --extra_apks com.android.sdkext.apex=$HOME/.android-certs/com.android.sdkext \
    --extra_apks com.android.support.apexer.apex=$HOME/.android-certs/com.android.support.apexer \
    --extra_apks com.android.telephony.apex=$HOME/.android-certs/com.android.telephony \
    --extra_apks com.android.telephonycore.apex=$HOME/.android-certs/com.android.telephonycore \
    --extra_apks com.android.telephonymodules.apex=$HOME/.android-certs/com.android.telephonymodules \
    --extra_apks com.android.tethering.apex=$HOME/.android-certs/com.android.tethering \
    --extra_apks com.android.tzdata.apex=$HOME/.android-certs/com.android.tzdata \
    --extra_apks com.android.uprobestats.apex=$HOME/.android-certs/com.android.uprobestats \
    --extra_apks com.android.uwb.apex=$HOME/.android-certs/com.android.uwb \
    --extra_apks com.android.uwb.resources.apex=$HOME/.android-certs/com.android.uwb.resources \
    --extra_apks com.android.virt.apex=$HOME/.android-certs/com.android.virt \
    --extra_apks com.android.vndk.current.apex=$HOME/.android-certs/com.android.vndk.current \
    --extra_apks com.android.vndk.current.on_vendor.apex=$HOME/.android-certs/com.android.vndk.current.on_vendor \
    --extra_apks com.android.webapp.apex=$HOME/.android-certs/com.android.webapp \
    --extra_apks com.android.wifi.apex=$HOME/.android-certs/com.android.wifi \
    --extra_apks com.android.wifi.dialog.apex=$HOME/.android-certs/com.android.wifi.dialog \
    --extra_apks com.android.wifi.resources.apex=$HOME/.android-certs/com.android.wifi.resources \
    --extra_apks com.google.pixel.camera.hal.apex=$HOME/.android-certs/com.google.pixel.camera.hal \
    --extra_apks com.google.pixel.vibrator.hal.apex=$HOME/.android-certs/com.google.pixel.vibrator.hal \
    --extra_apks com.qorvo.uwb.apex=$HOME/.android-certs/com.qorvo.uwb \
    --extra_apex_payload_key com.android.adbd.apex=$HOME/.android-certs/com.android.adbd.pem \
    --extra_apex_payload_key com.android.adservices.apex=$HOME/.android-certs/com.android.adservices.pem \
    --extra_apex_payload_key com.android.adservices.api.apex=$HOME/.android-certs/com.android.adservices.api.pem \
    --extra_apex_payload_key com.android.appsearch.apex=$HOME/.android-certs/com.android.appsearch.pem \
    --extra_apex_payload_key com.android.art.apex=$HOME/.android-certs/com.android.art.pem \
    --extra_apex_payload_key com.android.bluetooth.apex=$HOME/.android-certs/com.android.bluetooth.pem \
    --extra_apex_payload_key com.android.bt.apex=$HOME/.android-certs/com.android.bt.pem \
    --extra_apex_payload_key com.android.btservices.apex=$HOME/.android-certs/com.android.btservices.pem \
    --extra_apex_payload_key com.android.cellbroadcast.apex=$HOME/.android-certs/com.android.cellbroadcast.pem \
    --extra_apex_payload_key com.android.compos.apex=$HOME/.android-certs/com.android.compos.pem \
    --extra_apex_payload_key com.android.configinfrastructure.apex=$HOME/.android-certs/com.android.configinfrastructure.pem \
    --extra_apex_payload_key com.android.connectivity.resources.apex=$HOME/.android-certs/com.android.connectivity.resources.pem \
    --extra_apex_payload_key com.android.conscrypt.apex=$HOME/.android-certs/com.android.conscrypt.pem \
    --extra_apex_payload_key com.android.crashrecovery.apex=$HOME/.android-certs/com.android.crashrecovery.pem \
    --extra_apex_payload_key com.android.devicelock.apex=$HOME/.android-certs/com.android.devicelock.pem \
    --extra_apex_payload_key com.android.extservices.apex=$HOME/.android-certs/com.android.extservices.pem \
    --extra_apex_payload_key com.android.graphics.pdf.apex=$HOME/.android-certs/com.android.graphics.pdf.pem \
    --extra_apex_payload_key com.android.hardware.authsecret.apex=$HOME/.android-certs/com.android.hardware.authsecret.pem \
    --extra_apex_payload_key com.android.hardware.biometrics.face.virtual.apex=$HOME/.android-certs/com.android.hardware.biometrics.face.virtual.pem \
    --extra_apex_payload_key com.android.hardware.biometrics.fingerprint.virtual.apex=$HOME/.android-certs/com.android.hardware.biometrics.fingerprint.virtual.pem \
    --extra_apex_payload_key com.android.hardware.boot.apex=$HOME/.android-certs/com.android.hardware.boot.pem \
    --extra_apex_payload_key com.android.hardware.cas.apex=$HOME/.android-certs/com.android.hardware.cas.pem \
    --extra_apex_payload_key com.android.hardware.contexthub.apex=$HOME/.android-certs/com.android.hardware.contexthub.pem \
    --extra_apex_payload_key com.android.hardware.drm.clearkey.apex=$HOME/.android-certs/com.android.hardware.drm.clearkey.pem \
    --extra_apex_payload_key com.android.hardware.dumpstate.apex=$HOME/.android-certs/com.android.hardware.dumpstate.pem \
    --extra_apex_payload_key com.android.hardware.gatekeeper.nonsecure.apex=$HOME/.android-certs/com.android.hardware.gatekeeper.nonsecure.pem \
    --extra_apex_payload_key com.android.hardware.neuralnetworks.apex=$HOME/.android-certs/com.android.hardware.neuralnetworks.pem \
    --extra_apex_payload_key com.android.hardware.power.apex=$HOME/.android-certs/com.android.hardware.power.pem \
    --extra_apex_payload_key com.android.hardware.rebootescrow.apex=$HOME/.android-certs/com.android.hardware.rebootescrow.pem \
    --extra_apex_payload_key com.android.hardware.thermal.apex=$HOME/.android-certs/com.android.hardware.thermal.pem \
    --extra_apex_payload_key com.android.hardware.threadnetwork.apex=$HOME/.android-certs/com.android.hardware.threadnetwork.pem \
    --extra_apex_payload_key com.android.hardware.uwb.apex=$HOME/.android-certs/com.android.hardware.uwb.pem \
    --extra_apex_payload_key com.android.hardware.vibrator.apex=$HOME/.android-certs/com.android.hardware.vibrator.pem \
    --extra_apex_payload_key com.android.hardware.wifi.apex=$HOME/.android-certs/com.android.hardware.wifi.pem \
    --extra_apex_payload_key com.android.healthfitness.apex=$HOME/.android-certs/com.android.healthfitness.pem \
    --extra_apex_payload_key com.android.hotspot2.osulogin.apex=$HOME/.android-certs/com.android.hotspot2.osulogin.pem \
    --extra_apex_payload_key com.android.i18n.apex=$HOME/.android-certs/com.android.i18n.pem \
    --extra_apex_payload_key com.android.ipsec.apex=$HOME/.android-certs/com.android.ipsec.pem \
    --extra_apex_payload_key com.android.media.apex=$HOME/.android-certs/com.android.media.pem \
    --extra_apex_payload_key com.android.media.swcodec.apex=$HOME/.android-certs/com.android.media.swcodec.pem \
    --extra_apex_payload_key com.android.mediaprovider.apex=$HOME/.android-certs/com.android.mediaprovider.pem \
    --extra_apex_payload_key com.android.nearby.halfsheet.apex=$HOME/.android-certs/com.android.nearby.halfsheet.pem \
    --extra_apex_payload_key com.android.networkstack.tethering.apex=$HOME/.android-certs/com.android.networkstack.tethering.pem \
    --extra_apex_payload_key com.android.neuralnetworks.apex=$HOME/.android-certs/com.android.neuralnetworks.pem \
    --extra_apex_payload_key com.android.nfcservices.apex=$HOME/.android-certs/com.android.nfcservices.pem \
    --extra_apex_payload_key com.android.npumanager.apex=$HOME/.android-certs/com.android.npumanager.pem \
    --extra_apex_payload_key com.android.ondevicepersonalization.apex=$HOME/.android-certs/com.android.ondevicepersonalization.pem \
    --extra_apex_payload_key com.android.os.statsd.apex=$HOME/.android-certs/com.android.os.statsd.pem \
    --extra_apex_payload_key com.android.permission.apex=$HOME/.android-certs/com.android.permission.pem \
    --extra_apex_payload_key com.android.profiling.apex=$HOME/.android-certs/com.android.profiling.pem \
    --extra_apex_payload_key com.android.resolv.apex=$HOME/.android-certs/com.android.resolv.pem \
    --extra_apex_payload_key com.android.rkpd.apex=$HOME/.android-certs/com.android.rkpd.pem \
    --extra_apex_payload_key com.android.runtime.apex=$HOME/.android-certs/com.android.runtime.pem \
    --extra_apex_payload_key com.android.safetycenter.resources.apex=$HOME/.android-certs/com.android.safetycenter.resources.pem \
    --extra_apex_payload_key com.android.scheduling.apex=$HOME/.android-certs/com.android.scheduling.pem \
    --extra_apex_payload_key com.android.sdkext.apex=$HOME/.android-certs/com.android.sdkext.pem \
    --extra_apex_payload_key com.android.support.apexer.apex=$HOME/.android-certs/com.android.support.apexer.pem \
    --extra_apex_payload_key com.android.telephony.apex=$HOME/.android-certs/com.android.telephony.pem \
    --extra_apex_payload_key com.android.telephonycore.apex=$HOME/.android-certs/com.android.telephonycore.pem \
    --extra_apex_payload_key com.android.telephonymodules.apex=$HOME/.android-certs/com.android.telephonymodules.pem \
    --extra_apex_payload_key com.android.tethering.apex=$HOME/.android-certs/com.android.tethering.pem \
    --extra_apex_payload_key com.android.tzdata.apex=$HOME/.android-certs/com.android.tzdata.pem \
    --extra_apex_payload_key com.android.uprobestats.apex=$HOME/.android-certs/com.android.uprobestats.pem \
    --extra_apex_payload_key com.android.uwb.apex=$HOME/.android-certs/com.android.uwb.pem \
    --extra_apex_payload_key com.android.uwb.resources.apex=$HOME/.android-certs/com.android.uwb.resources.pem \
    --extra_apex_payload_key com.android.virt.apex=$HOME/.android-certs/com.android.virt.pem \
    --extra_apex_payload_key com.android.vndk.current.apex=$HOME/.android-certs/com.android.vndk.current.pem \
    --extra_apex_payload_key com.android.vndk.current.on_vendor.apex=$HOME/.android-certs/com.android.vndk.current.on_vendor.pem \
    --extra_apex_payload_key com.android.webapp.apex=$HOME/.android-certs/com.android.webapp.pem \
    --extra_apex_payload_key com.android.wifi.apex=$HOME/.android-certs/com.android.wifi.pem \
    --extra_apex_payload_key com.android.wifi.dialog.apex=$HOME/.android-certs/com.android.wifi.dialog.pem \
    --extra_apex_payload_key com.android.wifi.resources.apex=$HOME/.android-certs/com.android.wifi.resources.pem \
    --extra_apex_payload_key com.google.pixel.camera.hal.apex=$HOME/.android-certs/com.google.pixel.camera.hal.pem \
    --extra_apex_payload_key com.google.pixel.vibrator.hal.apex=$HOME/.android-certs/com.google.pixel.vibrator.hal.pem \
    --extra_apex_payload_key com.qorvo.uwb.apex=$HOME/.android-certs/com.qorvo.uwb.pem \
    $OUT/obj/PACKAGING/target_files_intermediates/*-target_files*.zip \
    signed-target_files.zip

    ota_from_target_files -k ~/.android-certs/releasekey \
    --block --backup=true \
    signed-target_files.zip \
    signed-ota_update.zip

}

echo "Qual o pais que voce mora(Pode ser qualquer um)"
echo "Coloque a sigla,se nao da erro"
read -rp "Escreva aqui" COUNTRY
sleep 3
echo "Estado (Pode ser qualquer um)"
echo "Esse e os procimos nao precisa da sigla"
read -rp "Escreva aqui" STATE
sleep 3
echo "Cidade (Pode ser qualquer um)"
read -rp "Escreva aqui" CITY
sleep 3

subject='/C='$COUNTRY'/ST='$STATE'/L='$CITY'/O=Android/OU=Android/CN=Android/emailAddress=$EMAIL'
mkdir ~/.android-certs
for cert in bluetooth cyngn-app media networkstack nfc platform releasekey sdk_sandbox shared testcert verity; do \
    ./development/tools/make_key ~/.android-certs/$cert "$subject"; \
done
ln -sf releasekey.pk8 ~/.android-certs/testkey.pk8
ln -sf releasekey.x509.pem ~/.android-certs/testkey.x509.pem

cp ./development/tools/make_key ~/.android-certs/
sed -i 's|2048|4096|g' ~/.android-certs/make_key
echo "Vai querer sem ou com senha [S/C]"
read -rp "Escreva aqui:" PASS

   if [[ $"PASS" =~ ^[Ss] ]]; then
echo "Spame Enter"
for apex in com.android.adbd com.android.adservices com.android.adservices.api com.android.appsearch com.android.art com.android.bluetooth com.android.bt com.android.btservices com.android.cellbroadcast com.android.compos com.android.configinfrastructure com.android.connectivity.resources com.android.conscrypt com.android.crashrecovery com.android.devicelock com.android.extservices com.android.graphics.pdf com.android.hardware.authsecret com.android.hardware.biometrics.face.virtual com.android.hardware.biometrics.fingerprint.virtual com.android.hardware.boot com.android.hardware.cas com.android.hardware.contexthub com.android.hardware.drm.clearkey com.android.hardware.dumpstate com.android.hardware.gatekeeper.nonsecure com.android.hardware.neuralnetworks com.android.hardware.power com.android.hardware.rebootescrow com.android.hardware.thermal com.android.hardware.threadnetwork com.android.hardware.uwb com.android.hardware.vibrator com.android.hardware.wifi com.android.healthfitness com.android.hotspot2.osulogin com.android.i18n com.android.ipsec com.android.media com.android.media.swcodec com.android.mediaprovider com.android.nearby.halfsheet com.android.networkstack.tethering com.android.neuralnetworks com.android.nfcservices com.android.npumanager com.android.ondevicepersonalization com.android.os.statsd com.android.permission com.android.profiling com.android.resolv com.android.rkpd com.android.runtime com.android.safetycenter.resources com.android.scheduling com.android.sdkext com.android.support.apexer com.android.telephony com.android.telephonycore com.android.telephonymodules com.android.tethering com.android.tzdata com.android.uprobestats com.android.uwb com.android.uwb.resources com.android.virt com.android.vndk.current com.android.vndk.current.on_vendor com.android.webapp com.android.wifi com.android.wifi.dialog com.android.wifi.resources com.google.pixel.camera.hal com.google.pixel.vibrator.hal com.qorvo.uwb; do \
    subject='/C='$COUNTRY'/ST='$STATE'/L='$CITY'/O=Android/OU=Android/CN='$apex'/emailAddress=$EMAIL'; \
    ~/.android-certs/make_key ~/.android-certs/$apex "$subject"; \
    openssl pkcs8 -in ~/.android-certs/$apex.pk8 -inform DER -nocrypt -out ~/.android-certs/$apex.pem; \
done
sign

   elif [[ "$PASS" ~ ^[Cc]]]; then
echo "Escreva sua senha quantas vezes o s ript pedir (Normalmente é\"Type your password\")"
for apex in com.android.adbd com.android.adservices com.android.adservices.api com.android.appsearch com.android.art com.android.bluetooth com.android.bt com.android.btservices com.android.cellbroadcast com.android.compos com.android.configinfrastructure com.android.connectivity.resources com.android.conscrypt com.android.crashrecovery com.android.devicelock com.android.extservices com.android.graphics.pdf com.android.hardware.authsecret com.android.hardware.biometrics.face.virtual com.android.hardware.biometrics.fingerprint.virtual com.android.hardware.boot com.android.hardware.cas com.android.hardware.contexthub com.android.hardware.drm.clearkey com.android.hardware.dumpstate com.android.hardware.gatekeeper.nonsecure com.android.hardware.neuralnetworks com.android.hardware.power com.android.hardware.rebootescrow com.android.hardware.thermal com.android.hardware.threadnetwork com.android.hardware.uwb com.android.hardware.vibrator com.android.hardware.wifi com.android.healthfitness com.android.hotspot2.osulogin com.android.i18n com.android.ipsec com.android.media com.android.media.swcodec com.android.mediaprovider com.android.nearby.halfsheet com.android.networkstack.tethering com.android.neuralnetworks com.android.nfcservices com.android.npumanager com.android.ondevicepersonalization com.android.os.statsd com.android.permission com.android.profiling com.android.resolv com.android.rkpd com.android.runtime com.android.safetycenter.resources com.android.scheduling com.android.sdkext com.android.support.apexer com.android.telephony com.android.telephonycore com.android.telephonymodules com.android.tethering com.android.tzdata com.android.uprobestats com.android.uwb com.android.uwb.resources com.android.virt com.android.vndk.current com.android.vndk.current.on_vendor com.android.webapp com.android.wifi com.android.wifi.dialog com.android.wifi.resources com.google.pixel.camera.hal com.google.pixel.vibrator.hal com.qorvo.uwb; do \
    subject='/C='$COUNTRY'/ST='$STATE'/L='$CITY'/O=Android/OU=Android/CN='$apex'/emailAddress=$EMAIL'; \
    ~/.android-certs/make_key ~/.android-certs/$apex "$subject"; \
    openssl pkcs8 -in ~/.android-certs/$apex.pk8 -inform DER -out ~/.android-certs/$apex.pem; \
done
sign