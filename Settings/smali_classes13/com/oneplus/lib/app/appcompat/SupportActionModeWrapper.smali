.class public Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;
.super Landroid/view/ActionMode;
.source "SupportActionModeWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper$CallbackWrapper;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/app/appcompat/ActionMode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportActionMode"    # Lcom/oneplus/lib/app/appcompat/ActionMode;

    .line 49
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    .line 52
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->finish()V

    .line 82
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/SupportMenu;

    invoke-static {v0, v1}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->wrapSupportMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/SupportMenu;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getTitleOptionalHint()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->invalidate()V

    .line 77
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 106
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setSubtitle(I)V

    .line 107
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 71
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setTag(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 96
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setTitle(I)V

    .line 97
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 66
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .line 131
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportActionModeWrapper;->mWrappedObject:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setTitleOptionalHint(Z)V

    .line 132
    return-void
.end method
