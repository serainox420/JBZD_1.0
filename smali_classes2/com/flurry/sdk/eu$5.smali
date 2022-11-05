.class public final Lcom/flurry/sdk/eu$5;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/eu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ep;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/flurry/sdk/ep$a;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ep;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/ep$a;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/flurry/sdk/eu$5;->a:Lcom/flurry/sdk/ep;

    iput-object p2, p0, Lcom/flurry/sdk/eu$5;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/eu$5;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/flurry/sdk/eu$5;->d:Lcom/flurry/sdk/ep$a;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flurry/sdk/eu$5;->a:Lcom/flurry/sdk/ep;

    iget-object v1, p0, Lcom/flurry/sdk/eu$5;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/eu$5;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/flurry/sdk/eu$5;->d:Lcom/flurry/sdk/ep$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/ep;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/ep$a;)V

    .line 62
    return-void
.end method
