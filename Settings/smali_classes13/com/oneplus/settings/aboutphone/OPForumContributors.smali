.class public Lcom/oneplus/settings/aboutphone/OPForumContributors;
.super Landroid/app/Activity;
.source "OPForumContributors.java"


# instance fields
.field private mForumContributorsTextView:Landroid/widget/TextView;

.field private mForumContributorsTextViewWidth:F

.field private mForumImageview:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/aboutphone/OPForumContributors;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/aboutphone/OPForumContributors;

    .line 32
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/aboutphone/OPForumContributors;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/aboutphone/OPForumContributors;
    .param p1, "x1"    # F

    .line 32
    iput p1, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextViewWidth:F

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/aboutphone/OPForumContributors;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/aboutphone/OPForumContributors;

    .line 32
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->initData()V

    return-void
.end method

.method private initData()V
    .locals 12

    .line 75
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumImageview:Landroid/widget/ImageView;

    const v1, 0x7f08033c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumImageview:Landroid/widget/ImageView;

    const v1, 0x7f08033d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "forumname":[Ljava/lang/String;
    goto :goto_2

    .line 84
    .end local v0    # "forumname":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumImageview:Landroid/widget/ImageView;

    const v1, 0x7f08033a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumImageview:Landroid/widget/ImageView;

    const v1, 0x7f08033b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0    # "forumname":[Ljava/lang/String;
    :goto_2
    const-string v1, ""

    .line 93
    .local v1, "name":Ljava/lang/String;
    const-string v2, "    /    "

    .line 94
    .local v2, "splitString":Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v0, v3

    .line 95
    .local v4, "lastName":Ljava/lang/String;
    move-object v5, v1

    move v1, v3

    .local v1, "i":I
    .local v5, "name":Ljava/lang/String;
    :goto_3
    array-length v6, v0

    if-ge v1, v6, :cond_6

    .line 96
    new-instance v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 97
    .local v6, "appendName":Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 98
    .local v7, "tempName":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 99
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v0, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 100
    aget-object v4, v0, v1

    goto :goto_4

    .line 102
    :cond_3
    invoke-virtual {p0, v4}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->needSplitText(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->needSplitText(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v0, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 105
    aget-object v4, v0, v1

    goto :goto_4

    .line 107
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 111
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v0, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    aget-object v4, v0, v1

    .line 95
    .end local v6    # "appendName":Ljava/lang/String;
    .end local v7    # "tempName":Ljava/lang/String;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 117
    .end local v1    # "i":I
    :cond_6
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 118
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3dcccccd    # 0.1f

    invoke-direct {v6, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 119
    .local v6, "font":Landroid/text/style/CharacterStyle;
    nop

    .local v3, "i":I
    :goto_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_9

    .line 120
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    .line 121
    .local v7, "n":Ljava/lang/Character;
    const/16 v8, 0x2f

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 122
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v8

    const/16 v9, 0x22

    if-eqz v8, :cond_7

    .line 123
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const-string v10, "#4db2b2b2"

    .line 124
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v8, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v10, v3, -0x1

    add-int/lit8 v11, v3, 0x1

    .line 123
    invoke-virtual {v1, v8, v10, v11, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 128
    :cond_7
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const-string v10, "#4d121212"

    .line 129
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v8, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v10, v3, -0x1

    add-int/lit8 v11, v3, 0x1

    .line 128
    invoke-virtual {v1, v8, v10, v11, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 119
    .end local v7    # "n":Ljava/lang/Character;
    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 137
    .end local v3    # "i":I
    :cond_9
    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public static synthetic lambda$onCreateOptionsMenu$0(Lcom/oneplus/settings/aboutphone/OPForumContributors;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "target"    # Landroid/view/MenuItem;

    .line 162
    sget-object v0, Lcom/android/settings/search/SearchFeatureProvider;->SEARCH_UI_INTENT:Landroid/content/Intent;

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/search/SearchFeatureProvider;->getSettingsIntelligencePkgName()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->startActivityForResult(Landroid/content/Intent;I)V

    .line 167
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public getFontWidth(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/String;

    .line 141
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public needSplitText(Ljava/lang/String;)Z
    .locals 3
    .param p1, "allNames"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 146
    .local v0, "tvPaint":Landroid/graphics/Paint;
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getFontWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextViewWidth:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 147
    const/4 v1, 0x0

    return v1

    .line 149
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const-string v0, "about_phone_settings"

    const-string v1, "click_award"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const v0, 0x7f0d0174

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->setContentView(I)V

    .line 44
    const v0, 0x7f0a0595

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 45
    .local v0, "toolbar":Landroid/widget/Toolbar;
    const v1, 0x7f120fa6

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->setActionBar(Landroid/widget/Toolbar;)V

    .line 47
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 48
    .local v1, "actionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_1

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f120bfe

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f120b6b

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 56
    :cond_1
    :goto_0
    const v2, 0x7f0a0207

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumImageview:Landroid/widget/ImageView;

    .line 57
    const v2, 0x7f0a0206

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextView:Landroid/widget/TextView;

    .line 58
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 59
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/oneplus/settings/aboutphone/OPForumContributors$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors$1;-><init>(Lcom/oneplus/settings/aboutphone/OPForumContributors;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 71
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 156
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 157
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 158
    const v1, 0x7f0a0030

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 159
    .local v1, "searchMenuItem":Landroid/view/MenuItem;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 160
    const v3, 0x7f0801ec

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 161
    new-instance v3, Lcom/oneplus/settings/aboutphone/-$$Lambda$OPForumContributors$Fgq3BTVklCn5TzLTlkK9M4s9qko;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/aboutphone/-$$Lambda$OPForumContributors$Fgq3BTVklCn5TzLTlkK9M4s9qko;-><init>(Lcom/oneplus/settings/aboutphone/OPForumContributors;)V

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 169
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->finish()V

    .line 177
    const/4 v0, 0x1

    return v0

    .line 179
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
