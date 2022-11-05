.class public final Lcom/revmob/client/c;
.super Lcom/revmob/client/f;


# instance fields
.field private a:Lcom/revmob/a/g;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/revmob/client/f;-><init>()V

    new-instance v0, Lcom/revmob/a/g;

    invoke-direct {v0, p1}, Lcom/revmob/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/client/c;->a:Lcom/revmob/a/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/revmob/client/c;->a:Lcom/revmob/a/g;

    invoke-virtual {v0}, Lcom/revmob/a/g;->a()V

    const-string v0, "Install registered on server"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Install not registered on server. Did you set a valid App ID? If not, collect one at http://revmob.com."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    return-void
.end method
