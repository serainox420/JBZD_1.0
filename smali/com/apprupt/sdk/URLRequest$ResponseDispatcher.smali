.class Lcom/apprupt/sdk/URLRequest$ResponseDispatcher;
.super Ljava/lang/Object;
.source "URLRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/URLRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseDispatcher"
.end annotation


# instance fields
.field public final a:Lcom/apprupt/sdk/URLRequest$URLResponse;

.field final synthetic b:Lcom/apprupt/sdk/URLRequest;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/URLRequest;Lcom/apprupt/sdk/URLRequest$URLResponse;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/apprupt/sdk/URLRequest$ResponseDispatcher;->b:Lcom/apprupt/sdk/URLRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/apprupt/sdk/URLRequest$ResponseDispatcher;->a:Lcom/apprupt/sdk/URLRequest$URLResponse;

    .line 121
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest$ResponseDispatcher;->b:Lcom/apprupt/sdk/URLRequest;

    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest$ResponseDispatcher;->a:Lcom/apprupt/sdk/URLRequest$URLResponse;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/URLRequest;->a(Lcom/apprupt/sdk/URLRequest;Lcom/apprupt/sdk/URLRequest$URLResponse;)V

    .line 126
    return-void
.end method
