.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$WifiSliceBuilder$zGyWboi-khe6O7kGcUmHExYnEzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v4/util/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/lang/CharSequence;

.field private final synthetic f$2:Landroidx/slice/builders/SliceAction;

.field private final synthetic f$3:Landroidx/slice/builders/SliceAction;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/SliceAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSliceBuilder$zGyWboi-khe6O7kGcUmHExYnEzU;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSliceBuilder$zGyWboi-khe6O7kGcUmHExYnEzU;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSliceBuilder$zGyWboi-khe6O7kGcUmHExYnEzU;->f$2:Landroidx/slice/builders/SliceAction;

    iput-object p4, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSliceBuilder$zGyWboi-khe6O7kGcUmHExYnEzU;->f$3:Landroidx/slice/builders/SliceAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSliceBuilder$zGyWboi-khe6O7kGcUmHExYnEzU;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSliceBuilder$zGyWboi-khe6O7kGcUmHExYnEzU;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSliceBuilder$zGyWboi-khe6O7kGcUmHExYnEzU;->f$2:Landroidx/slice/builders/SliceAction;

    iget-object v3, p0, Lcom/android/settings/wifi/-$$Lambda$WifiSliceBuilder$zGyWboi-khe6O7kGcUmHExYnEzU;->f$3:Landroidx/slice/builders/SliceAction;

    check-cast p1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/settings/wifi/WifiSliceBuilder;->lambda$getSlice$0(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    return-void
.end method
