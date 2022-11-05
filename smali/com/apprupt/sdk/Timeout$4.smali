.class Lcom/apprupt/sdk/Timeout$4;
.super Ljava/lang/Object;
.source "Timeout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/Timeout;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/Timeout;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/Timeout;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/apprupt/sdk/Timeout$4;->a:Lcom/apprupt/sdk/Timeout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$4;->a:Lcom/apprupt/sdk/Timeout;

    invoke-static {v0}, Lcom/apprupt/sdk/Timeout;->b(Lcom/apprupt/sdk/Timeout;)I

    .line 81
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$4;->a:Lcom/apprupt/sdk/Timeout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/Timeout;->b(Lcom/apprupt/sdk/Timeout;Z)Z

    .line 82
    return-void
.end method
