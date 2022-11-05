.class Lcom/apprupt/sdk/Timeout$1;
.super Ljava/lang/Object;
.source "Timeout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/Timeout;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/apprupt/sdk/Timeout;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/Timeout;J)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/apprupt/sdk/Timeout$1;->b:Lcom/apprupt/sdk/Timeout;

    iput-wide p2, p0, Lcom/apprupt/sdk/Timeout$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$1;->b:Lcom/apprupt/sdk/Timeout;

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Lcom/apprupt/sdk/Timeout;->a(Lcom/apprupt/sdk/Timeout;I)I

    .line 40
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$1;->b:Lcom/apprupt/sdk/Timeout;

    iget-wide v2, p0, Lcom/apprupt/sdk/Timeout$1;->a:J

    invoke-static {v0, v2, v3}, Lcom/apprupt/sdk/Timeout;->a(Lcom/apprupt/sdk/Timeout;J)J

    .line 41
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$1;->b:Lcom/apprupt/sdk/Timeout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/Timeout;->a(Lcom/apprupt/sdk/Timeout;Z)Z

    .line 42
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$1;->b:Lcom/apprupt/sdk/Timeout;

    invoke-static {v0}, Lcom/apprupt/sdk/Timeout;->a(Lcom/apprupt/sdk/Timeout;)V

    .line 43
    return-void
.end method
