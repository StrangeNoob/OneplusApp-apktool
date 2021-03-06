.class public Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
.super Ljava/lang/Object;
.source "OPAboutPhoneHardWareController.java"


# instance fields
.field private mCameraMessage:Ljava/lang/String;

.field private mCpuMessage:Ljava/lang/String;

.field private final mHardWareInfoView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mScreenMessage:Ljava/lang/String;

.field private mStorageMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "header"    # Landroid/view/View;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p3, :cond_0

    .line 29
    iput-object p3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0137

    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    .line 34
    :goto_0
    return-void
.end method

.method public static newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "header"    # Landroid/view/View;

    .line 24
    new-instance v0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;-><init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public done()Landroid/view/View;
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    const v1, 0x7f0a040d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    .local v0, "mIconView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    const v2, 0x7f0a0143

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    .local v1, "mCpuMessageView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    const v3, 0x7f0a051e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 65
    .local v2, "mStorageMessageView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    const v4, 0x7f0a00d8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 66
    .local v3, "mCameraMessageView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    const v5, 0x7f0a04a0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 67
    .local v4, "mScreenMessageView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mCpuMessage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mStorageMessage:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mCameraMessage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mScreenMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mHardWareInfoView:Landroid/view/View;

    return-object v5
.end method

.method public setCameraMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mCameraMessage:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public setCpuMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mCpuMessage:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public setPhoneImage(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 37
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 38
    return-object p0
.end method

.method public setScreenMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mScreenMessage:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public setStorageMessage(Ljava/lang/String;)Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneHardWareController;->mStorageMessage:Ljava/lang/String;

    .line 48
    return-object p0
.end method
