.class Lcom/apprupt/sdk/URLRequest$2;
.super Ljava/lang/Object;
.source "URLRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/URLRequest;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/apprupt/sdk/URLRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/apprupt/sdk/URLRequest;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/URLRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/apprupt/sdk/URLRequest$2;->c:Lcom/apprupt/sdk/URLRequest;

    iput-object p2, p0, Lcom/apprupt/sdk/URLRequest$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/apprupt/sdk/URLRequest$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest$2;->c:Lcom/apprupt/sdk/URLRequest;

    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/apprupt/sdk/URLRequest$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/apprupt/sdk/URLRequest;->a(Lcom/apprupt/sdk/URLRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method
