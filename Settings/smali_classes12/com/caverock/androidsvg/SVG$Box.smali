.class public Lcom/caverock/androidsvg/SVG$Box;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Box"
.end annotation


# instance fields
.field public height:F

.field public minX:F

.field public minY:F

.field public width:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "minX"    # F
    .param p2, "minY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 855
    iput p2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 856
    iput p3, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 857
    iput p4, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 858
    return-void
.end method

.method public static fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;
    .locals 3
    .param p0, "minX"    # F
    .param p1, "minY"    # F
    .param p2, "maxX"    # F
    .param p3, "maxY"    # F

    .line 862
    new-instance v0, Lcom/caverock/androidsvg/SVG$Box;

    sub-float v1, p2, p0

    sub-float v2, p3, p1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method public maxX()F
    .locals 2

    .line 870
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method public maxY()F
    .locals 2

    .line 871
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    add-float/2addr v0, v1

    return v0
.end method

.method public toRectF()Landroid/graphics/RectF;
    .locals 5

    .line 867
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v3

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public union(Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 2
    .param p1, "other"    # Lcom/caverock/androidsvg/SVG$Box;

    .line 875
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 876
    :cond_0
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 877
    :cond_1
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 878
    :cond_2
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 879
    :cond_3
    return-void
.end method
