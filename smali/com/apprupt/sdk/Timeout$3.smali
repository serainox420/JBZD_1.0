.class Lcom/apprupt/sdk/Timeout$3;
.super Ljava/util/TimerTask;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/Timeout;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/apprupt/sdk/Timeout;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/Timeout;I)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/apprupt/sdk/Timeout$3;->b:Lcom/apprupt/sdk/Timeout;

    iput p2, p0, Lcom/apprupt/sdk/Timeout$3;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$3;->b:Lcom/apprupt/sdk/Timeout;

    iget v1, p0, Lcom/apprupt/sdk/Timeout$3;->a:I

    invoke-static {v0, v1}, Lcom/apprupt/sdk/Timeout;->b(Lcom/apprupt/sdk/Timeout;I)V

    .line 71
    return-void
.end method
