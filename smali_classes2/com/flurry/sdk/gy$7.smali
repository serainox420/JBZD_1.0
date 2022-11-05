.class final Lcom/flurry/sdk/gy$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gy;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy;)V
    .locals 0

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/flurry/sdk/gy$7;->a:Lcom/flurry/sdk/gy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/flurry/sdk/gy$7;->a:Lcom/flurry/sdk/gy;

    sget-object v1, Lcom/flurry/sdk/bc;->u:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gy$7;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v3}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    .line 1559
    return-void
.end method
