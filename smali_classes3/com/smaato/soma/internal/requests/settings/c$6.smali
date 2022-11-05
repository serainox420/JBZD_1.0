.class Lcom/smaato/soma/internal/requests/settings/c$6;
.super Lcom/smaato/soma/l;
.source "LocationCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/requests/settings/c;->onProviderDisabled(Ljava/lang/String;)V
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
.field final synthetic a:Lcom/smaato/soma/internal/requests/settings/c;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/requests/settings/c;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/settings/c$6;->a:Lcom/smaato/soma/internal/requests/settings/c;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/c$6;->a:Lcom/smaato/soma/internal/requests/settings/c;

    iput-wide v2, v0, Lcom/smaato/soma/internal/requests/settings/c;->a:D

    .line 135
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/c$6;->a:Lcom/smaato/soma/internal/requests/settings/c;

    iput-wide v2, v0, Lcom/smaato/soma/internal/requests/settings/c;->b:D

    .line 136
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
    .line 130
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/settings/c$6;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
