.class public Lcom/oneplus/settings/defaultapp/view/DefaultMusicPicker;
.super Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;
.source "DefaultMusicPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;-><init>()V

    return-void
.end method


# virtual methods
.method protected getType()Ljava/lang/String;
    .locals 1

    .line 34
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getKeyTypeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
