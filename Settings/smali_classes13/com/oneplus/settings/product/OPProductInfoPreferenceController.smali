.class public Lcom/oneplus/settings/product/OPProductInfoPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OPProductInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY:Ljava/lang/String; = "oneplus_product_info"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p1, p0, Lcom/oneplus/settings/product/OPProductInfoPreferenceController;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "oneplus_product_info"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method
