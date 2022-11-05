.class public Lcom/madsdk/gson/request/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private final adunit:Ljava/lang/String;

.field public assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/madsdk/gson/request/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private final layout:Ljava/lang/String;

.field public secure:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/madsdk/gson/request/Asset;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/madsdk/gson/request/Request;->assets:Ljava/util/List;

    .line 16
    iput-object p2, p0, Lcom/madsdk/gson/request/Request;->layout:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/madsdk/gson/request/Request;->adunit:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/madsdk/gson/request/Request;->secure:Ljava/lang/String;

    .line 19
    return-void
.end method
