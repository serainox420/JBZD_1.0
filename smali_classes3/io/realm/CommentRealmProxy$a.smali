.class final Lio/realm/CommentRealmProxy$a;
.super Lio/realm/internal/c;
.source "CommentRealmProxy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/CommentRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 49
    invoke-direct {p0}, Lio/realm/internal/c;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 51
    const-string v1, "Comment"

    const-string v2, "id"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/CommentRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/CommentRealmProxy$a;->a:J

    .line 52
    const-string v1, "id"

    iget-wide v2, p0, Lio/realm/CommentRealmProxy$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "Comment"

    const-string v2, "media_id"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/CommentRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/CommentRealmProxy$a;->b:J

    .line 54
    const-string v1, "media_id"

    iget-wide v2, p0, Lio/realm/CommentRealmProxy$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "Comment"

    const-string v2, "parent_id"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/CommentRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/CommentRealmProxy$a;->c:J

    .line 56
    const-string v1, "parent_id"

    iget-wide v2, p0, Lio/realm/CommentRealmProxy$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "Comment"

    const-string v2, "comment"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/CommentRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/CommentRealmProxy$a;->d:J

    .line 58
    const-string v1, "comment"

    iget-wide v2, p0, Lio/realm/CommentRealmProxy$a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "Comment"

    const-string v2, "plus"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/CommentRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/CommentRealmProxy$a;->e:J

    .line 60
    const-string v1, "plus"

    iget-wide v2, p0, Lio/realm/CommentRealmProxy$a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "Comment"

    const-string v2, "minus"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/CommentRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/CommentRealmProxy$a;->f:J

    .line 62
    const-string v1, "minus"

    iget-wide v2, p0, Lio/realm/CommentRealmProxy$a;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "Comment"

    const-string v2, "reports"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/CommentRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/CommentRealmProxy$a;->g:J

    .line 64
    const-string v1, "reports"

    iget-wide v2, p0, Lio/realm/CommentRealmProxy$a;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "Comment"

    const-string v2, "created_at"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/CommentRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/CommentRealmProxy$a;->h:J

    .line 66
    const-string v1, "created_at"

    iget-wide v2, p0, Lio/realm/CommentRealmProxy$a;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "Comment"

    const-string v2, "user"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/CommentRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/CommentRealmProxy$a;->i:J

    .line 68
    const-string v1, "user"

    iget-wide v2, p0, Lio/realm/CommentRealmProxy$a;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "Comment"

    const-string v2, "voted"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/CommentRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/CommentRealmProxy$a;->j:J

    .line 70
    const-string v1, "voted"

    iget-wide v2, p0, Lio/realm/CommentRealmProxy$a;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "Comment"

    const-string v2, "replies"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/CommentRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/CommentRealmProxy$a;->k:J

    .line 72
    const-string v1, "replies"

    iget-wide v2, p0, Lio/realm/CommentRealmProxy$a;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p0, v0}, Lio/realm/CommentRealmProxy$a;->a(Ljava/util/Map;)V

    .line 75
    return-void
.end method


# virtual methods
.method public final a()Lio/realm/CommentRealmProxy$a;
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lio/realm/internal/c;->b()Lio/realm/internal/c;

    move-result-object v0

    check-cast v0, Lio/realm/CommentRealmProxy$a;

    return-object v0
.end method

.method public final a(Lio/realm/internal/c;)V
    .locals 2

    .prologue
    .line 79
    check-cast p1, Lio/realm/CommentRealmProxy$a;

    .line 80
    iget-wide v0, p1, Lio/realm/CommentRealmProxy$a;->a:J

    iput-wide v0, p0, Lio/realm/CommentRealmProxy$a;->a:J

    .line 81
    iget-wide v0, p1, Lio/realm/CommentRealmProxy$a;->b:J

    iput-wide v0, p0, Lio/realm/CommentRealmProxy$a;->b:J

    .line 82
    iget-wide v0, p1, Lio/realm/CommentRealmProxy$a;->c:J

    iput-wide v0, p0, Lio/realm/CommentRealmProxy$a;->c:J

    .line 83
    iget-wide v0, p1, Lio/realm/CommentRealmProxy$a;->d:J

    iput-wide v0, p0, Lio/realm/CommentRealmProxy$a;->d:J

    .line 84
    iget-wide v0, p1, Lio/realm/CommentRealmProxy$a;->e:J

    iput-wide v0, p0, Lio/realm/CommentRealmProxy$a;->e:J

    .line 85
    iget-wide v0, p1, Lio/realm/CommentRealmProxy$a;->f:J

    iput-wide v0, p0, Lio/realm/CommentRealmProxy$a;->f:J

    .line 86
    iget-wide v0, p1, Lio/realm/CommentRealmProxy$a;->g:J

    iput-wide v0, p0, Lio/realm/CommentRealmProxy$a;->g:J

    .line 87
    iget-wide v0, p1, Lio/realm/CommentRealmProxy$a;->h:J

    iput-wide v0, p0, Lio/realm/CommentRealmProxy$a;->h:J

    .line 88
    iget-wide v0, p1, Lio/realm/CommentRealmProxy$a;->i:J

    iput-wide v0, p0, Lio/realm/CommentRealmProxy$a;->i:J

    .line 89
    iget-wide v0, p1, Lio/realm/CommentRealmProxy$a;->j:J

    iput-wide v0, p0, Lio/realm/CommentRealmProxy$a;->j:J

    .line 90
    iget-wide v0, p1, Lio/realm/CommentRealmProxy$a;->k:J

    iput-wide v0, p0, Lio/realm/CommentRealmProxy$a;->k:J

    .line 92
    invoke-virtual {p1}, Lio/realm/CommentRealmProxy$a;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/CommentRealmProxy$a;->a(Ljava/util/Map;)V

    .line 93
    return-void
.end method

.method public synthetic b()Lio/realm/internal/c;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lio/realm/CommentRealmProxy$a;->a()Lio/realm/CommentRealmProxy$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lio/realm/CommentRealmProxy$a;->a()Lio/realm/CommentRealmProxy$a;

    move-result-object v0

    return-object v0
.end method
