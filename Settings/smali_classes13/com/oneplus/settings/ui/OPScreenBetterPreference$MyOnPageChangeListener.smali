.class public Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "OPScreenBetterPreference.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPScreenBetterPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ui/OPScreenBetterPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    .line 109
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .line 147
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .line 143
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "arg0"    # I

    .line 112
    const v0, 0x7f0803db

    const v1, 0x7f0803da

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 128
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPScreenBetterPreference;->access$300(Lcom/oneplus/settings/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-static {v3}, Lcom/oneplus/settings/ui/OPScreenBetterPreference;->access$000(Lcom/oneplus/settings/ui/OPScreenBetterPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPScreenBetterPreference;->access$200(Lcom/oneplus/settings/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPScreenBetterPreference;->access$000(Lcom/oneplus/settings/ui/OPScreenBetterPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPScreenBetterPreference;->access$200(Lcom/oneplus/settings/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-static {v3}, Lcom/oneplus/settings/ui/OPScreenBetterPreference;->access$000(Lcom/oneplus/settings/ui/OPScreenBetterPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPScreenBetterPreference;->access$100(Lcom/oneplus/settings/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPScreenBetterPreference;->access$000(Lcom/oneplus/settings/ui/OPScreenBetterPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPScreenBetterPreference;->access$300(Lcom/oneplus/settings/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPScreenBetterPreference;->access$000(Lcom/oneplus/settings/ui/OPScreenBetterPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPScreenBetterPreference;->access$100(Lcom/oneplus/settings/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-static {v3}, Lcom/oneplus/settings/ui/OPScreenBetterPreference;->access$000(Lcom/oneplus/settings/ui/OPScreenBetterPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPScreenBetterPreference;->access$200(Lcom/oneplus/settings/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPScreenBetterPreference;->access$000(Lcom/oneplus/settings/ui/OPScreenBetterPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    nop

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenBetterPreference;

    invoke-static {v0, p1}, Lcom/oneplus/settings/ui/OPScreenBetterPreference;->access$402(Lcom/oneplus/settings/ui/OPScreenBetterPreference;I)I

    .line 139
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
