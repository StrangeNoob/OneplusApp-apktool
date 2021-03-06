.class public Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;
.super Lcom/android/settingslib/CustomDialogPreference;
.source "OPHotspotApBandSelectionPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;
    }
.end annotation


# static fields
.field static final KEY_CHECKED_BANDS:Ljava/lang/String; = "checked_bands"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_HOTSPOT_SUPER_STATE:Ljava/lang/String; = "hotspot_super_state"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final UNSET:I = -0x80000000


# instance fields
.field mApBandRadioGroup:Landroid/widget/RadioGroup;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mBandEntries:[Ljava/lang/String;

.field private mExistingConfigValue:I

.field mRadio2G:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mRadio5G:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mRestoredBands:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mShouldRestore:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;)V

    .line 61
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mExistingConfigValue:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mExistingConfigValue:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mExistingConfigValue:I

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mExistingConfigValue:I

    .line 78
    return-void
.end method

.method private addApBandRadioGroupViews(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/LinearLayout;

    .line 166
    const v0, 0x7f0a0460

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio2G:Landroid/widget/RadioButton;

    .line 167
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio2G:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mBandEntries:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio2G:Landroid/widget/RadioButton;

    invoke-direct {p0, v2}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->restoreBandIfNeeded(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 170
    const v0, 0x7f0a0461

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mBandEntries:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    invoke-direct {p0, v2}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->restoreBandIfNeeded(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 174
    const v0, 0x7f0a045f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mApBandRadioGroup:Landroid/widget/RadioGroup;

    .line 175
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mApBandRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 176
    return-void
.end method

.method private isBandPreviouslySelected(I)Z
    .locals 3
    .param p1, "bandIndex"    # I

    .line 207
    iget v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mExistingConfigValue:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 216
    return v1

    .line 213
    :pswitch_0
    if-ne p1, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 211
    :pswitch_1
    if-nez p1, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 209
    :pswitch_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private restoreBandIfNeeded(I)Z
    .locals 2
    .param p1, "band"    # I

    .line 180
    invoke-direct {p0, p1}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->isBandPreviouslySelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mShouldRestore:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mShouldRestore:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0
.end method

.method private updatePositiveButton()V
    .locals 3

    .line 185
    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 186
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 187
    .local v1, "button":Landroid/widget/Button;
    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio2G:Landroid/widget/RadioButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    if-eqz v2, :cond_3

    .line 188
    iget-object v2, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio2G:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 190
    :cond_3
    return-void
.end method


# virtual methods
.method getWifiBand()I
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio2G:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    .line 196
    .local v0, "checked_2g":Z
    iget-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    .line 197
    .local v1, "checked_5g":Z
    if-eqz v0, :cond_0

    .line 198
    const/4 v2, 0x0

    return v2

    .line 199
    :cond_0
    if-eqz v1, :cond_1

    .line 200
    const/4 v2, 0x1

    return v2

    .line 202
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Wifi Config only supports selecting one or all bands"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 103
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 104
    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, p0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 109
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mBandEntries:[Ljava/lang/String;

    .line 111
    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->addApBandRadioGroupViews(Landroid/widget/LinearLayout;)V

    .line 114
    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->updatePositiveButton()V

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mShouldRestore:Z

    .line 118
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 133
    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->updatePositiveButton()V

    .line 134
    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-super {p0}, Lcom/android/settingslib/CustomDialogPreference;->onClick()V

    .line 142
    :cond_0
    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 148
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio2G:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->getWifiBand()I

    move-result v0

    .line 151
    .local v0, "wifiBand":I
    iput v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mExistingConfigValue:I

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 155
    .end local v0    # "wifiBand":I
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;

    .line 84
    .local v0, "myState":Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/settingslib/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 86
    iget-boolean v1, v0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->shouldRestore:Z

    iput-boolean v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mShouldRestore:Z

    .line 87
    iget-boolean v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mShouldRestore:Z

    if-eqz v1, :cond_1

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    .line 89
    iget-boolean v1, v0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->enabled2G:Z

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    iget-boolean v1, v0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->enabled5G:Z

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    .line 98
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->updatePositiveButton()V

    .line 99
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 122
    invoke-super {p0}, Lcom/android/settingslib/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 124
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 125
    .local v1, "myState":Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;
    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v1, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->shouldRestore:Z

    .line 126
    iget-object v2, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio2G:Landroid/widget/RadioButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio2G:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->enabled2G:Z

    .line 127
    iget-object v2, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v4

    nop

    :cond_2
    iput-boolean v3, v1, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->enabled5G:Z

    .line 128
    return-object v1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 222
    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->updatePositiveButton()V

    .line 223
    return-void
.end method

.method public setExistingConfigValue(I)V
    .locals 0
    .param p1, "band"    # I

    .line 162
    iput p1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mExistingConfigValue:I

    .line 163
    return-void
.end method
