.class final Lio/realm/BaseMediaRealmProxy$a;
.super Lio/realm/internal/c;
.source "BaseMediaRealmProxy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/BaseMediaRealmProxy;
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

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 60
    invoke-direct {p0}, Lio/realm/internal/c;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 62
    const-string v1, "BaseMedia"

    const-string v2, "id"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->a:J

    .line 63
    const-string v1, "id"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "BaseMedia"

    const-string v2, "user_id"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->b:J

    .line 65
    const-string v1, "user_id"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "BaseMedia"

    const-string v2, "type"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->c:J

    .line 67
    const-string v1, "type"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "BaseMedia"

    const-string v2, "image"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->d:J

    .line 69
    const-string v1, "image"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "BaseMedia"

    const-string v2, "movie"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->e:J

    .line 71
    const-string v1, "movie"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "BaseMedia"

    const-string v2, "width"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->f:J

    .line 73
    const-string v1, "width"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "BaseMedia"

    const-string v2, "height"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->g:J

    .line 75
    const-string v1, "height"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "BaseMedia"

    const-string v2, "pictures_counter"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->h:J

    .line 77
    const-string v1, "pictures_counter"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "BaseMedia"

    const-string v2, "media_added"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->i:J

    .line 79
    const-string v1, "media_added"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "BaseMedia"

    const-string v2, "title"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->j:J

    .line 81
    const-string v1, "title"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "BaseMedia"

    const-string v2, "url"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->k:J

    .line 83
    const-string v1, "url"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "BaseMedia"

    const-string v2, "vote_score"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->l:J

    .line 85
    const-string v1, "vote_score"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "BaseMedia"

    const-string v2, "date"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->m:J

    .line 87
    const-string v1, "date"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "BaseMedia"

    const-string v2, "share_url"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->n:J

    .line 89
    const-string v1, "share_url"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "BaseMedia"

    const-string v2, "share_image"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->o:J

    .line 91
    const-string v1, "share_image"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "BaseMedia"

    const-string v2, "youtube"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->p:J

    .line 93
    const-string v1, "youtube"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "BaseMedia"

    const-string v2, "pictures"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->q:J

    .line 95
    const-string v1, "pictures"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->q:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "BaseMedia"

    const-string v2, "comments"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->r:J

    .line 97
    const-string v1, "comments"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->r:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "BaseMedia"

    const-string v2, "voted"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->s:J

    .line 99
    const-string v1, "voted"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->s:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "BaseMedia"

    const-string v2, "ratio"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->t:J

    .line 101
    const-string v1, "ratio"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->t:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "BaseMedia"

    const-string v2, "in_queue"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->u:J

    .line 103
    const-string v1, "in_queue"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->u:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "BaseMedia"

    const-string v2, "is_favorite"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->v:J

    .line 105
    const-string v1, "is_favorite"

    iget-wide v2, p0, Lio/realm/BaseMediaRealmProxy$a;->v:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p0, v0}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/util/Map;)V

    .line 108
    return-void
.end method


# virtual methods
.method public final a()Lio/realm/BaseMediaRealmProxy$a;
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lio/realm/internal/c;->b()Lio/realm/internal/c;

    move-result-object v0

    check-cast v0, Lio/realm/BaseMediaRealmProxy$a;

    return-object v0
.end method

.method public final a(Lio/realm/internal/c;)V
    .locals 2

    .prologue
    .line 112
    check-cast p1, Lio/realm/BaseMediaRealmProxy$a;

    .line 113
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->a:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->a:J

    .line 114
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->b:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->b:J

    .line 115
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->c:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->c:J

    .line 116
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->d:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->d:J

    .line 117
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->e:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->e:J

    .line 118
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->f:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->f:J

    .line 119
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->g:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->g:J

    .line 120
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->h:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->h:J

    .line 121
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->i:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->i:J

    .line 122
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->j:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->j:J

    .line 123
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->k:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->k:J

    .line 124
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->l:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->l:J

    .line 125
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->m:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->m:J

    .line 126
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->n:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->n:J

    .line 127
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->o:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->o:J

    .line 128
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->p:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->p:J

    .line 129
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->q:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->q:J

    .line 130
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->r:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->r:J

    .line 131
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->s:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->s:J

    .line 132
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->t:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->t:J

    .line 133
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->u:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->u:J

    .line 134
    iget-wide v0, p1, Lio/realm/BaseMediaRealmProxy$a;->v:J

    iput-wide v0, p0, Lio/realm/BaseMediaRealmProxy$a;->v:J

    .line 136
    invoke-virtual {p1}, Lio/realm/BaseMediaRealmProxy$a;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/BaseMediaRealmProxy$a;->a(Ljava/util/Map;)V

    .line 137
    return-void
.end method

.method public synthetic b()Lio/realm/internal/c;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lio/realm/BaseMediaRealmProxy$a;->a()Lio/realm/BaseMediaRealmProxy$a;

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
    invoke-virtual {p0}, Lio/realm/BaseMediaRealmProxy$a;->a()Lio/realm/BaseMediaRealmProxy$a;

    move-result-object v0

    return-object v0
.end method
