.class Lcom/apprupt/sdk/CvMediation$3$1$1;
.super Ljava/lang/Object;
.source "CvMediation.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvMediation$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvMediation$3$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediation$3$1;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation$3$1$1;->a:Lcom/apprupt/sdk/CvMediation$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$3$1$1;->a:Lcom/apprupt/sdk/CvMediation$3$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvMediation$3$1;->a:Lcom/apprupt/sdk/CvMediation$3;

    iget-object v0, v0, Lcom/apprupt/sdk/CvMediation$3;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 130
    return-void
.end method
