.class public Lcom/oneplus/settings/OPColorPickerActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;


# static fields
.field private static final SAVE_NEMU:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OPFullScreenGestureGuidePage"


# instance fields
.field private mColor:Landroid/view/View;

.field private mColorEditView:Landroid/widget/EditText;

.field private mColorText:Landroid/widget/EditText;

.field private mCurrentColor:Ljava/lang/String;

.field private mCurrentTempColor:Ljava/lang/String;

.field private mEditColorDialog:Landroid/app/AlertDialog;

.field private mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

.field private mPreviewAutoBrightness:Landroid/widget/ImageView;

.field private mPreviewSeekBar:Landroid/widget/SeekBar;

.field private mPreviewSwitch:Landroid/widget/Switch;

.field private mPreviewText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPColorPickerActivity;

    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPColorPickerActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPColorPickerActivity;
    .param p1, "x1"    # Landroid/widget/EditText;

    .line 52
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->setEditTextAtLastLocation(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPColorPickerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->isColorCodeValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPColorPickerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oneplus/settings/OPColorPickerActivity;)Lcom/oneplus/settings/ui/ColorPickerView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPColorPickerActivity;

    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPColorPickerActivity;

    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/OPColorPickerActivity;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPColorPickerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/OPColorPickerActivity;->refreshUI(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPColorPickerActivity;

    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static convertToColorInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "argb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 195
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 198
    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private convertToRGB(I)Ljava/lang/String;
    .locals 6
    .param p1, "color"    # I

    .line 178
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "red":Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "green":Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "blue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private isColorCodeValid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "color"    # Ljava/lang/String;

    .line 210
    const-string v0, "^#([0-9a-fA-F]{6})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 211
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 212
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private refreshUI(ILjava/lang/String;)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "colorStr"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewAutoBrightness:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 118
    return-void
.end method

.method private setEditTextAtLastLocation(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 216
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 217
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 218
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    .line 219
    .local v1, "spanText":Landroid/text/Spannable;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 221
    .end local v1    # "spanText":Landroid/text/Spannable;
    :cond_0
    return-void
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 134
    const/4 v0, 0x0

    const v1, 0x7f12147a

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 135
    const v1, 0x7f080352

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 136
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 137
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "current_temp_color"

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 161
    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->finish()V

    .line 162
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0382

    if-ne v0, v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->showColotEditDialog()V

    .line 207
    :cond_0
    return-void
.end method

.method public onColorChanged(I)V
    .locals 4
    .param p1, "color"    # I

    .line 166
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "argb":Ljava/lang/StringBuffer;
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->convertToRGB(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->convertToRGB(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->refreshUI(ILjava/lang/String;)V

    .line 175
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f0d014a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->setContentView(I)V

    .line 75
    const v0, 0x7f0a0384

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0a0388

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSwitch:Landroid/widget/Switch;

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 78
    const v0, 0x7f0a0387

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekBar:Landroid/widget/SeekBar;

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/oneplus/settings/OPColorPickerActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPColorPickerActivity$1;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    const v0, 0x7f0a0385

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewAutoBrightness:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f0a0382

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorText:Landroid/widget/EditText;

    .line 89
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v0, 0x7f0a0383

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/ColorPickerView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ui/ColorPickerView;->setOnColorChangedListener(Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 95
    const-string v1, "current_color"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    .line 96
    const-string v1, "current_color"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/ColorPickerView;->setColor(I)V

    goto :goto_0

    .line 100
    :cond_0
    const-string v1, "#FF0000"

    iput-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    .line 101
    const-string v1, "#FF0000"

    iput-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    const-string v2, "#FF0000"

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/ColorPickerView;->setColor(I)V

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/settings/OPColorPickerActivity;->refreshUI(ILjava/lang/String;)V

    .line 107
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 125
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 126
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const v2, 0x102002c

    if-eq v0, v2, :cond_0

    .line 152
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->onBackPressed()V

    .line 150
    return v1

    .line 143
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "current_temp_color"

    iget-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->finish()V

    .line 147
    return v1
.end method

.method public showColotEditDialog()V
    .locals 4

    .line 224
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0170

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "editView":Landroid/view/View;
    const v2, 0x7f0a03e9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPEditText;

    iput-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    .line 228
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 229
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    new-instance v3, Lcom/oneplus/settings/OPColorPickerActivity$2;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/OPColorPickerActivity$2;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 258
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120d80

    .line 259
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 260
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 261
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120a37

    .line 262
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1200eb

    new-instance v3, Lcom/oneplus/settings/OPColorPickerActivity$3;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/OPColorPickerActivity$3;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    .line 263
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroid/app/AlertDialog;

    .line 273
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 274
    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/oneplus/settings/OPColorPickerActivity$4;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/OPColorPickerActivity$4;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    .line 275
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    return-void
.end method
