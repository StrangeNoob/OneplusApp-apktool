.class Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;
.super Landroid/support/v4/view/PagerAdapter;
.source "OPPhoneControlWayCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViewPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

.field final synthetic val$views:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    .line 221
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->val$views:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 235
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->val$views:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 236
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->val$views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 240
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->val$views:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;->val$views:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .line 225
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
