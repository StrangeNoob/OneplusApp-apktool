.class Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$1;
.super Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;
.source "PlaybackTransportControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;->onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    .line 141
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$1;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$1;"
    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackTransportControlGlue;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBindDescription(Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 3
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 145
    .local p0, "this":Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$1;, "Landroid/support/v17/leanback/media/PlaybackTransportControlGlue$1;"
    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    .line 146
    .local v0, "glue":Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getSubtitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method
