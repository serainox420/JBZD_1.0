.class final Lio/realm/PictureRealmProxy$a;
.super Lio/realm/internal/c;
.source "PictureRealmProxy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PictureRealmProxy;
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


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Lio/realm/internal/c;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 49
    const-string v1, "Picture"

    const-string v2, "id"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/PictureRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/PictureRealmProxy$a;->a:J

    .line 50
    const-string v1, "id"

    iget-wide v2, p0, Lio/realm/PictureRealmProxy$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "Picture"

    const-string v2, "image"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/PictureRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/PictureRealmProxy$a;->b:J

    .line 52
    const-string v1, "image"

    iget-wide v2, p0, Lio/realm/PictureRealmProxy$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "Picture"

    const-string v2, "mp4"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/PictureRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/PictureRealmProxy$a;->c:J

    .line 54
    const-string v1, "mp4"

    iget-wide v2, p0, Lio/realm/PictureRealmProxy$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "Picture"

    const-string v2, "width"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/PictureRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/PictureRealmProxy$a;->d:J

    .line 56
    const-string v1, "width"

    iget-wide v2, p0, Lio/realm/PictureRealmProxy$a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "Picture"

    const-string v2, "height"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/PictureRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/PictureRealmProxy$a;->e:J

    .line 58
    const-string v1, "height"

    iget-wide v2, p0, Lio/realm/PictureRealmProxy$a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "Picture"

    const-string v2, "added"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/PictureRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/PictureRealmProxy$a;->f:J

    .line 60
    const-string v1, "added"

    iget-wide v2, p0, Lio/realm/PictureRealmProxy$a;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "Picture"

    const-string v2, "type"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/PictureRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/PictureRealmProxy$a;->g:J

    .line 62
    const-string v1, "type"

    iget-wide v2, p0, Lio/realm/PictureRealmProxy$a;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "Picture"

    const-string v2, "share_image"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/PictureRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/PictureRealmProxy$a;->h:J

    .line 64
    const-string v1, "share_image"

    iget-wide v2, p0, Lio/realm/PictureRealmProxy$a;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "Picture"

    const-string v2, "youtube"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/PictureRealmProxy$a;->a(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/PictureRealmProxy$a;->i:J

    .line 66
    const-string v1, "youtube"

    iget-wide v2, p0, Lio/realm/PictureRealmProxy$a;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0, v0}, Lio/realm/PictureRealmProxy$a;->a(Ljava/util/Map;)V

    .line 69
    return-void
.end method


# virtual methods
.method public final a()Lio/realm/PictureRealmProxy$a;
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lio/realm/internal/c;->b()Lio/realm/internal/c;

    move-result-object v0

    check-cast v0, Lio/realm/PictureRealmProxy$a;

    return-object v0
.end method

.method public final a(Lio/realm/internal/c;)V
    .locals 2

    .prologue
    .line 73
    check-cast p1, Lio/realm/PictureRealmProxy$a;

    .line 74
    iget-wide v0, p1, Lio/realm/PictureRealmProxy$a;->a:J

    iput-wide v0, p0, Lio/realm/PictureRealmProxy$a;->a:J

    .line 75
    iget-wide v0, p1, Lio/realm/PictureRealmProxy$a;->b:J

    iput-wide v0, p0, Lio/realm/PictureRealmProxy$a;->b:J

    .line 76
    iget-wide v0, p1, Lio/realm/PictureRealmProxy$a;->c:J

    iput-wide v0, p0, Lio/realm/PictureRealmProxy$a;->c:J

    .line 77
    iget-wide v0, p1, Lio/realm/PictureRealmProxy$a;->d:J

    iput-wide v0, p0, Lio/realm/PictureRealmProxy$a;->d:J

    .line 78
    iget-wide v0, p1, Lio/realm/PictureRealmProxy$a;->e:J

    iput-wide v0, p0, Lio/realm/PictureRealmProxy$a;->e:J

    .line 79
    iget-wide v0, p1, Lio/realm/PictureRealmProxy$a;->f:J

    iput-wide v0, p0, Lio/realm/PictureRealmProxy$a;->f:J

    .line 80
    iget-wide v0, p1, Lio/realm/PictureRealmProxy$a;->g:J

    iput-wide v0, p0, Lio/realm/PictureRealmProxy$a;->g:J

    .line 81
    iget-wide v0, p1, Lio/realm/PictureRealmProxy$a;->h:J

    iput-wide v0, p0, Lio/realm/PictureRealmProxy$a;->h:J

    .line 82
    iget-wide v0, p1, Lio/realm/PictureRealmProxy$a;->i:J

    iput-wide v0, p0, Lio/realm/PictureRealmProxy$a;->i:J

    .line 84
    invoke-virtual {p1}, Lio/realm/PictureRealmProxy$a;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/PictureRealmProxy$a;->a(Ljava/util/Map;)V

    .line 85
    return-void
.end method

.method public synthetic b()Lio/realm/internal/c;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lio/realm/PictureRealmProxy$a;->a()Lio/realm/PictureRealmProxy$a;

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
    invoke-virtual {p0}, Lio/realm/PictureRealmProxy$a;->a()Lio/realm/PictureRealmProxy$a;

    move-result-object v0

    return-object v0
.end method
