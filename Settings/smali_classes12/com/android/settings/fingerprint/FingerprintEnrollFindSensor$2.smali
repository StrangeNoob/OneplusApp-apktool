.class Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;
.super Ljava/lang/Object;
.source "FingerprintEnrollFindSensor.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    .line 153
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 169
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$000(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$002(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)Z

    .line 171
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$200(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 165
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 2
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .line 156
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$002(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)Z

    .line 158
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$200(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V

    .line 161
    :cond_0
    return-void
.end method
