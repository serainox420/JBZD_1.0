.class Lcom/apprupt/sdk/Q$1$1;
.super Ljava/lang/Object;
.source "Q.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/Q$1;->a(Lcom/apprupt/sdk/Q$Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/Q$Promise;

.field final synthetic b:Lcom/apprupt/sdk/Q$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/Q$1;Lcom/apprupt/sdk/Q$Promise;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/apprupt/sdk/Q$1$1;->b:Lcom/apprupt/sdk/Q$1;

    iput-object p2, p0, Lcom/apprupt/sdk/Q$1$1;->a:Lcom/apprupt/sdk/Q$Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/apprupt/sdk/Q$1$1;->b:Lcom/apprupt/sdk/Q$1;

    iget-object v0, v0, Lcom/apprupt/sdk/Q$1;->a:Lcom/apprupt/sdk/Q;

    iget-object v1, p0, Lcom/apprupt/sdk/Q$1$1;->a:Lcom/apprupt/sdk/Q$Promise;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$Promise;)V

    .line 148
    return-void
.end method
