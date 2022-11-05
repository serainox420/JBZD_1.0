.class Lcom/apprupt/sdk/Q$4;
.super Ljava/lang/Object;
.source "Q.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/Q;->b(Ljava/lang/Object;)Lcom/apprupt/sdk/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/apprupt/sdk/Q;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/Q;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/apprupt/sdk/Q$4;->b:Lcom/apprupt/sdk/Q;

    iput-object p2, p0, Lcom/apprupt/sdk/Q$4;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/apprupt/sdk/Q$4;->b:Lcom/apprupt/sdk/Q;

    iget-object v1, p0, Lcom/apprupt/sdk/Q$4;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-void
.end method
