.class public abstract Lcom/revmob/client/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field private h:Z

.field private i:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/revmob/client/a;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/revmob/client/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/revmob/client/a;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/revmob/client/a;->h:Z

    iput-object p5, p0, Lcom/revmob/client/a;->c:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/revmob/client/a;->i:Z

    return-void
.end method


# virtual methods
.method public final T()Z
    .locals 1

    iget-boolean v0, p0, Lcom/revmob/client/a;->h:Z

    return v0
.end method

.method public final U()Z
    .locals 1

    iget-boolean v0, p0, Lcom/revmob/client/a;->i:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/revmob/client/a;->b:Ljava/lang/String;

    const-string v1, "click_stub.json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/client/a;->b:Ljava/lang/String;

    const-string v1, "?videoPosition="

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/client/a;->b:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/revmob/client/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/client/a;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/revmob/client/a;->b:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/revmob/client/a;->b:Ljava/lang/String;

    const-string v1, "&videoPosition="

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/client/a;->b:Ljava/lang/String;

    goto :goto_0
.end method
