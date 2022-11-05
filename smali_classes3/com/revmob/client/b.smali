.class public final Lcom/revmob/client/b;
.super Lcom/revmob/client/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/revmob/client/f;-><init>()V

    iput-object p1, p0, Lcom/revmob/client/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/revmob/client/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/revmob/client/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/revmob/client/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/revmob/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Impression reported."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Failed to report impression."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    return-void
.end method
