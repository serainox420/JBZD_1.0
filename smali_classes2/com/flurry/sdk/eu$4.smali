.class public final Lcom/flurry/sdk/eu$4;
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
.field final synthetic a:Lcom/flurry/sdk/ev;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/flurry/sdk/ev$a;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ev;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/ev$a;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/flurry/sdk/eu$4;->a:Lcom/flurry/sdk/ev;

    iput-object p2, p0, Lcom/flurry/sdk/eu$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/eu$4;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/flurry/sdk/eu$4;->d:Lcom/flurry/sdk/ev$a;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flurry/sdk/eu$4;->a:Lcom/flurry/sdk/ev;

    iget-object v1, p0, Lcom/flurry/sdk/eu$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/eu$4;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/flurry/sdk/eu$4;->d:Lcom/flurry/sdk/ev$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/ev;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/ev$a;)V

    .line 51
    return-void
.end method
