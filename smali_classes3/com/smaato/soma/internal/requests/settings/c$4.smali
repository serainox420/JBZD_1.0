.class Lcom/smaato/soma/internal/requests/settings/c$4;
.super Lcom/smaato/soma/l;
.source "LocationCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/requests/settings/c;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/smaato/soma/internal/requests/settings/c;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/requests/settings/c;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/settings/c$4;->b:Lcom/smaato/soma/internal/requests/settings/c;

    iput-object p2, p0, Lcom/smaato/soma/internal/requests/settings/c$4;->a:Landroid/location/Location;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/c$4;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 116
    iget-object v2, p0, Lcom/smaato/soma/internal/requests/settings/c$4;->a:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 117
    iget-object v4, p0, Lcom/smaato/soma/internal/requests/settings/c$4;->b:Lcom/smaato/soma/internal/requests/settings/c;

    iput-wide v0, v4, Lcom/smaato/soma/internal/requests/settings/c;->a:D

    .line 118
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/c$4;->b:Lcom/smaato/soma/internal/requests/settings/c;

    iput-wide v2, v0, Lcom/smaato/soma/internal/requests/settings/c;->b:D

    .line 119
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/c$4;->b:Lcom/smaato/soma/internal/requests/settings/c;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/c$4;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/smaato/soma/internal/requests/settings/c;->c:D

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/settings/c$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
