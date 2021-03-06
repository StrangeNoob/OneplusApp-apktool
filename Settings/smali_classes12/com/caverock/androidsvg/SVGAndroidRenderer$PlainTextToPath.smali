.class Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;
.super Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlainTextToPath"
.end annotation


# instance fields
.field public textAsPath:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V
    .locals 1
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "textAsPath"    # Landroid/graphics/Path;

    .line 3680
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 3679
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 3681
    iput p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    .line 3682
    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->y:F

    .line 3683
    iput-object p4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->textAsPath:Landroid/graphics/Path;

    .line 3684
    return-void
.end method


# virtual methods
.method public doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextContainer;

    .line 3689
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TextPath;

    if-eqz v0, :cond_0

    .line 3691
    const-string v0, "Using <textPath> elements in a clip path is not supported."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$6(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3692
    return v1

    .line 3694
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public processText(Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .line 3700
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$1(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3703
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 3704
    .local v0, "spanPath":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    iget v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->y:F

    move-object v2, p1

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 3705
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->textAsPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 3709
    .end local v0    # "spanPath":Landroid/graphics/Path;
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    .line 3710
    return-void
.end method
