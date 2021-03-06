.class public Lcom/oneplus/lib/app/appcompat/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:Landroid/graphics/drawable/Drawable;

.field c:Landroid/graphics/drawable/Drawable;

.field d:Z

.field e:Z

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    new-instance v0, Lcom/oneplus/lib/app/appcompat/c;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/c;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarContainer;)V

    .line 50
    :goto_0
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 52
    sget-object v0, Lcom/oneplus/a/b$m;->ActionBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    sget v3, Lcom/oneplus/a/b$m;->ActionBar_background:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    .line 55
    sget v3, Lcom/oneplus/a/b$m;->ActionBar_backgroundStacked:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    .line 57
    sget v3, Lcom/oneplus/a/b$m;->ActionBar_height:I

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->j:I

    .line 59
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getId()I

    move-result v3

    sget v4, Lcom/oneplus/a/b$g;->split_action_bar:I

    if-ne v3, v4, :cond_0

    .line 60
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->d:Z

    .line 61
    sget v3, Lcom/oneplus/a/b$m;->ActionBar_backgroundSplit:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    .line 63
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setWillNotDraw(Z)V

    .line 67
    return-void

    .line 47
    :cond_1
    new-instance v0, Lcom/oneplus/lib/app/appcompat/b;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/b;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarContainer;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 65
    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 232
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 147
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 156
    :cond_2
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->g:Landroid/view/View;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 161
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 171
    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 72
    sget v0, Lcom/oneplus/a/b$g;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->h:Landroid/view/View;

    .line 73
    sget v0, Lcom/oneplus/a/b$g;->action_context_bar:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->i:Landroid/view/View;

    .line 74
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->f:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 274
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->g:Landroid/view/View;

    .line 275
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_2

    move v3, v1

    .line 277
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredHeight()I

    move-result v5

    .line 279
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 280
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 281
    sub-int v6, v5, v6

    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v5, v0

    invoke-virtual {v4, p2, v6, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->d:Z

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 288
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 313
    :goto_1
    if-eqz v1, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->invalidate()V

    .line 316
    :cond_1
    return-void

    :cond_2
    move v3, v2

    .line 275
    goto :goto_0

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 293
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 294
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->h:Landroid/view/View;

    .line 295
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 294
    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_2
    move v0, v1

    .line 305
    :goto_3
    iput-boolean v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->e:Z

    .line 306
    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 307
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 308
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 307
    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->i:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->i:Landroid/view/View;

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 298
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->i:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->i:Landroid/view/View;

    .line 299
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->i:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 298
    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 301
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_6
    move v1, v0

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v1, v2

    goto/16 :goto_1
.end method

.method public onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 242
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 243
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->j:I

    if-ltz v0, :cond_0

    .line 244
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->j:I

    .line 245
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 244
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 247
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 249
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->h:Landroid/view/View;

    if-nez v0, :cond_2

    .line 268
    :cond_1
    :goto_0
    return-void

    .line 251
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 252
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b(Landroid/view/View;)I

    move-result v0

    move v1, v0

    .line 262
    :goto_1
    if-ne v2, v3, :cond_5

    .line 263
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 264
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->g:Landroid/view/View;

    .line 265
    invoke-direct {p0, v3}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 264
    invoke-virtual {p0, v2, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->i:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 258
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->i:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b(Landroid/view/View;)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 260
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 263
    :cond_5
    const v0, 0x7fffffff

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 79
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    .line 82
    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 84
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->h:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->h:Landroid/view/View;

    .line 86
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 85
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->d:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setWillNotDraw(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->invalidate()V

    .line 92
    return-void

    :cond_3
    move v0, v1

    .line 89
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 115
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    .line 118
    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 120
    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->d:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->d:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setWillNotDraw(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->invalidate()V

    .line 127
    return-void

    :cond_3
    move v0, v1

    .line 124
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 97
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    .line 100
    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 102
    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->g:Landroid/view/View;

    .line 104
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 103
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->d:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setWillNotDraw(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->invalidate()V

    .line 110
    return-void

    :cond_3
    move v0, v1

    .line 107
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setTabContainer(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->g:Landroid/view/View;

    .line 204
    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 206
    invoke-virtual {p1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 207
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 208
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 211
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->f:Z

    .line 182
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setDescendantFocusability(I)V

    .line 184
    return-void

    .line 182
    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 132
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 133
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 136
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 132
    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 225
    if-eqz p3, :cond_0

    .line 226
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->d:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->e:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->d:Z

    if-nez v0, :cond_3

    .line 141
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
