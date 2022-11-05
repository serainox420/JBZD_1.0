.class final Lcom/flurry/sdk/ey$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ep$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ey;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ey;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/flurry/sdk/ey$3;->a:Lcom/flurry/sdk/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 117
    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    .line 118
    invoke-static {}, Lcom/flurry/sdk/ed;->a()V

    .line 119
    invoke-static {}, Lcom/flurry/sdk/ed;->b()V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ey$3;->a:Lcom/flurry/sdk/ey;

    sget-object v1, Lcom/flurry/sdk/ei;->k:Lcom/flurry/sdk/ei;

    invoke-virtual {v0, v1, p2}, Lcom/flurry/sdk/ey;->a(Lcom/flurry/sdk/ei;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    const-string v0, "PostSend"

    iget-object v1, p0, Lcom/flurry/sdk/ey$3;->a:Lcom/flurry/sdk/ey;

    iget-object v1, v1, Lcom/flurry/sdk/ey;->h:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/hr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/ey$3;->a:Lcom/flurry/sdk/ey;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ey;->a(Ljava/lang/Long;)V

    .line 113
    return-void
.end method
