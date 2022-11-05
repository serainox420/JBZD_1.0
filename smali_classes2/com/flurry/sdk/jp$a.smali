.class final Lcom/flurry/sdk/jp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jp;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jp;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/flurry/sdk/jp$a;->a:Lcom/flurry/sdk/jp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/flurry/sdk/jp$a;->a:Lcom/flurry/sdk/jp;

    invoke-static {v0, p1}, Lcom/flurry/sdk/jp;->a(Lcom/flurry/sdk/jp;Landroid/location/Location;)Landroid/location/Location;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/jp$a;->a:Lcom/flurry/sdk/jp;

    invoke-static {v0}, Lcom/flurry/sdk/jp;->c(Lcom/flurry/sdk/jp;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 312
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/jp;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Max location reports reached, stopping"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/flurry/sdk/jp$a;->a:Lcom/flurry/sdk/jp;

    invoke-static {v0}, Lcom/flurry/sdk/jp;->b(Lcom/flurry/sdk/jp;)V

    .line 315
    :cond_1
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 293
    return-void
.end method
