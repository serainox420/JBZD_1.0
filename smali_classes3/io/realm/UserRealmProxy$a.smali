.class final Lio/realm/UserRealmProxy$a;
.super Lio/realm/internal/c;
.source "UserRealmProxy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/UserRealmProxy;
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
    const-string v1, "User"

    const-string v2, "id"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/UserRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/UserRealmProxy$a;->a:J

    .line 52
    const-string v1, "id"

    iget-wide v2, p0, Lio/realm/UserRealmProxy$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "User"

    const-string v2, "username"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/UserRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/UserRealmProxy$a;->b:J

    .line 54
    const-string v1, "username"

    iget-wide v2, p0, Lio/realm/UserRealmProxy$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "User"

    const-string v2, "avatar"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/UserRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/UserRealmProxy$a;->c:J

    .line 56
    const-string v1, "avatar"

    iget-wide v2, p0, Lio/realm/UserRealmProxy$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "User"

    const-string v2, "media_count"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/UserRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/UserRealmProxy$a;->d:J

    .line 58
    const-string v1, "media_count"

    iget-wide v2, p0, Lio/realm/UserRealmProxy$a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "User"

    const-string v2, "media_main_count"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/UserRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/UserRealmProxy$a;->e:J

    .line 60
    const-string v1, "media_main_count"

    iget-wide v2, p0, Lio/realm/UserRealmProxy$a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "User"

    const-string v2, "comments_count"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/UserRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/UserRealmProxy$a;->f:J

    .line 62
    const-string v1, "comments_count"

    iget-wide v2, p0, Lio/realm/UserRealmProxy$a;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "User"

    const-string v2, "comments_marked_count"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/UserRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/UserRealmProxy$a;->g:J

    .line 64
    const-string v1, "comments_marked_count"

    iget-wide v2, p0, Lio/realm/UserRealmProxy$a;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "User"

    const-string v2, "followers"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/UserRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/UserRealmProxy$a;->h:J

    .line 66
    const-string v1, "followers"

    iget-wide v2, p0, Lio/realm/UserRealmProxy$a;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "User"

    const-string v2, "following"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/UserRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/UserRealmProxy$a;->i:J

    .line 68
    const-string v1, "following"

    iget-wide v2, p0, Lio/realm/UserRealmProxy$a;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "User"

    const-string v2, "is_following"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/UserRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/UserRealmProxy$a;->j:J

    .line 70
    const-string v1, "is_following"

    iget-wide v2, p0, Lio/realm/UserRealmProxy$a;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "User"

    const-string v2, "account_since"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/UserRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/UserRealmProxy$a;->k:J

    .line 72
    const-string v1, "account_since"

    iget-wide v2, p0, Lio/realm/UserRealmProxy$a;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p0, v0}, Lio/realm/UserRealmProxy$a;->a(Ljava/util/Map;)V

    .line 75
    return-void
.end method


# virtual methods
.method public final a()Lio/realm/UserRealmProxy$a;
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lio/realm/internal/c;->b()Lio/realm/internal/c;

    move-result-object v0

    check-cast v0, Lio/realm/UserRealmProxy$a;

    return-object v0
.end method

.method public final a(Lio/realm/internal/c;)V
    .locals 2

    .prologue
    .line 79
    check-cast p1, Lio/realm/UserRealmProxy$a;

    .line 80
    iget-wide v0, p1, Lio/realm/UserRealmProxy$a;->a:J

    iput-wide v0, p0, Lio/realm/UserRealmProxy$a;->a:J

    .line 81
    iget-wide v0, p1, Lio/realm/UserRealmProxy$a;->b:J

    iput-wide v0, p0, Lio/realm/UserRealmProxy$a;->b:J

    .line 82
    iget-wide v0, p1, Lio/realm/UserRealmProxy$a;->c:J

    iput-wide v0, p0, Lio/realm/UserRealmProxy$a;->c:J

    .line 83
    iget-wide v0, p1, Lio/realm/UserRealmProxy$a;->d:J

    iput-wide v0, p0, Lio/realm/UserRealmProxy$a;->d:J

    .line 84
    iget-wide v0, p1, Lio/realm/UserRealmProxy$a;->e:J

    iput-wide v0, p0, Lio/realm/UserRealmProxy$a;->e:J

    .line 85
    iget-wide v0, p1, Lio/realm/UserRealmProxy$a;->f:J

    iput-wide v0, p0, Lio/realm/UserRealmProxy$a;->f:J

    .line 86
    iget-wide v0, p1, Lio/realm/UserRealmProxy$a;->g:J

    iput-wide v0, p0, Lio/realm/UserRealmProxy$a;->g:J

    .line 87
    iget-wide v0, p1, Lio/realm/UserRealmProxy$a;->h:J

    iput-wide v0, p0, Lio/realm/UserRealmProxy$a;->h:J

    .line 88
    iget-wide v0, p1, Lio/realm/UserRealmProxy$a;->i:J

    iput-wide v0, p0, Lio/realm/UserRealmProxy$a;->i:J

    .line 89
    iget-wide v0, p1, Lio/realm/UserRealmProxy$a;->j:J

    iput-wide v0, p0, Lio/realm/UserRealmProxy$a;->j:J

    .line 90
    iget-wide v0, p1, Lio/realm/UserRealmProxy$a;->k:J

    iput-wide v0, p0, Lio/realm/UserRealmProxy$a;->k:J

    .line 92
    invoke-virtual {p1}, Lio/realm/UserRealmProxy$a;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/UserRealmProxy$a;->a(Ljava/util/Map;)V

    .line 93
    return-void
.end method

.method public synthetic b()Lio/realm/internal/c;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lio/realm/UserRealmProxy$a;->a()Lio/realm/UserRealmProxy$a;

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
    invoke-virtual {p0}, Lio/realm/UserRealmProxy$a;->a()Lio/realm/UserRealmProxy$a;

    move-result-object v0

    return-object v0
.end method
