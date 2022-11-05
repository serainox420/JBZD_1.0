.class Lio/realm/DefaultRealmModuleMediator;
.super Lio/realm/internal/m;
.source "DefaultRealmModuleMediator.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    const-class v1, Lpl/jbzd/app/model/Comment;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v1, Lpl/jbzd/app/model/Media;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    const-class v1, Lpl/jbzd/app/model/BaseMedia;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    const-class v1, Lpl/jbzd/app/model/Picture;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    const-class v1, Lpl/jbzd/app/model/User;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DefaultRealmModuleMediator;->a:Ljava/util/Set;

    .line 36
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lio/realm/internal/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;",
            "Lio/realm/RealmSchema;",
            ")",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->b(Ljava/lang/Class;)V

    .line 61
    const-class v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p2}, Lio/realm/CommentRealmProxy;->a(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const-class v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-static {p2}, Lio/realm/MediaRealmProxy;->a(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_1
    const-class v0, Lpl/jbzd/app/model/BaseMedia;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-static {p2}, Lio/realm/BaseMediaRealmProxy;->a(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_2
    const-class v0, Lpl/jbzd/app/model/Picture;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    invoke-static {p2}, Lio/realm/PictureRealmProxy;->a(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_3
    const-class v0, Lpl/jbzd/app/model/User;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    invoke-static {p2}, Lio/realm/UserRealmProxy;->a(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_4
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/Class;Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;",
            "Lio/realm/internal/SharedRealm;",
            ")",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->b(Ljava/lang/Class;)V

    .line 42
    const-class v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p2}, Lio/realm/CommentRealmProxy;->a(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const-class v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-static {p2}, Lio/realm/MediaRealmProxy;->a(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_1
    const-class v0, Lpl/jbzd/app/model/BaseMedia;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-static {p2}, Lio/realm/BaseMediaRealmProxy;->a(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_2
    const-class v0, Lpl/jbzd/app/model/Picture;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    invoke-static {p2}, Lio/realm/PictureRealmProxy;->a(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_3
    const-class v0, Lpl/jbzd/app/model/User;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    invoke-static {p2}, Lio/realm/UserRealmProxy;->a(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_4
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/Class;Lio/realm/internal/SharedRealm;Z)Lio/realm/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;",
            "Lio/realm/internal/SharedRealm;",
            "Z)",
            "Lio/realm/internal/c;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->b(Ljava/lang/Class;)V

    .line 80
    const-class v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p2, p3}, Lio/realm/CommentRealmProxy;->a(Lio/realm/internal/SharedRealm;Z)Lio/realm/CommentRealmProxy$a;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const-class v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-static {p2, p3}, Lio/realm/MediaRealmProxy;->a(Lio/realm/internal/SharedRealm;Z)Lio/realm/MediaRealmProxy$a;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    const-class v0, Lpl/jbzd/app/model/BaseMedia;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-static {p2, p3}, Lio/realm/BaseMediaRealmProxy;->a(Lio/realm/internal/SharedRealm;Z)Lio/realm/BaseMediaRealmProxy$a;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_2
    const-class v0, Lpl/jbzd/app/model/Picture;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    invoke-static {p2, p3}, Lio/realm/PictureRealmProxy;->a(Lio/realm/internal/SharedRealm;Z)Lio/realm/PictureRealmProxy$a;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_3
    const-class v0, Lpl/jbzd/app/model/User;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    invoke-static {p2, p3}, Lio/realm/UserRealmProxy;->a(Lio/realm/internal/SharedRealm;Z)Lio/realm/UserRealmProxy$a;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_4
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public a(Lio/realm/l;Lio/realm/t;ZLjava/util/Map;)Lio/realm/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(",
            "Lio/realm/l;",
            "TE;Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 167
    instance-of v0, p2, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 169
    :goto_0
    const-class v1, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    check-cast p2, Lpl/jbzd/app/model/Comment;

    invoke-static {p1, p2, p3, p4}, Lio/realm/CommentRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/Comment;ZLjava/util/Map;)Lpl/jbzd/app/model/Comment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/t;

    .line 178
    :goto_1
    return-object v0

    .line 167
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_1
    const-class v1, Lpl/jbzd/app/model/Media;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    check-cast p2, Lpl/jbzd/app/model/Media;

    invoke-static {p1, p2, p3, p4}, Lio/realm/MediaRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/Media;ZLjava/util/Map;)Lpl/jbzd/app/model/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/t;

    goto :goto_1

    .line 173
    :cond_2
    const-class v1, Lpl/jbzd/app/model/BaseMedia;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    check-cast p2, Lpl/jbzd/app/model/BaseMedia;

    invoke-static {p1, p2, p3, p4}, Lio/realm/BaseMediaRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/BaseMedia;ZLjava/util/Map;)Lpl/jbzd/app/model/BaseMedia;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/t;

    goto :goto_1

    .line 175
    :cond_3
    const-class v1, Lpl/jbzd/app/model/Picture;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 176
    check-cast p2, Lpl/jbzd/app/model/Picture;

    invoke-static {p1, p2, p3, p4}, Lio/realm/PictureRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/Picture;ZLjava/util/Map;)Lpl/jbzd/app/model/Picture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/t;

    goto :goto_1

    .line 177
    :cond_4
    const-class v1, Lpl/jbzd/app/model/User;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 178
    check-cast p2, Lpl/jbzd/app/model/User;

    invoke-static {p1, p2, p3, p4}, Lio/realm/UserRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/User;ZLjava/util/Map;)Lpl/jbzd/app/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/t;

    goto :goto_1

    .line 180
    :cond_5
    invoke-static {v0}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/n;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/t;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Object;",
            "Lio/realm/internal/n;",
            "Lio/realm/internal/c;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 135
    sget-object v1, Lio/realm/b;->g:Lio/realm/b$c;

    invoke-virtual {v1}, Lio/realm/b$c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/b$b;

    .line 137
    :try_start_0
    move-object v0, p2

    check-cast v0, Lio/realm/b;

    move-object v2, v0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lio/realm/b$b;->a(Lio/realm/b;Lio/realm/internal/n;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 138
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->b(Ljava/lang/Class;)V

    .line 140
    const-class v2, Lpl/jbzd/app/model/Comment;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    new-instance v2, Lio/realm/CommentRealmProxy;

    invoke-direct {v2}, Lio/realm/CommentRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v1}, Lio/realm/b$b;->f()V

    .line 149
    :goto_0
    return-object v2

    .line 142
    :cond_0
    :try_start_1
    const-class v2, Lpl/jbzd/app/model/Media;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    new-instance v2, Lio/realm/MediaRealmProxy;

    invoke-direct {v2}, Lio/realm/MediaRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-virtual {v1}, Lio/realm/b$b;->f()V

    goto :goto_0

    .line 144
    :cond_1
    :try_start_2
    const-class v2, Lpl/jbzd/app/model/BaseMedia;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    new-instance v2, Lio/realm/BaseMediaRealmProxy;

    invoke-direct {v2}, Lio/realm/BaseMediaRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    invoke-virtual {v1}, Lio/realm/b$b;->f()V

    goto :goto_0

    .line 146
    :cond_2
    :try_start_3
    const-class v2, Lpl/jbzd/app/model/Picture;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    new-instance v2, Lio/realm/PictureRealmProxy;

    invoke-direct {v2}, Lio/realm/PictureRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/t;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    invoke-virtual {v1}, Lio/realm/b$b;->f()V

    goto :goto_0

    .line 148
    :cond_3
    :try_start_4
    const-class v2, Lpl/jbzd/app/model/User;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    new-instance v2, Lio/realm/UserRealmProxy;

    invoke-direct {v2}, Lio/realm/UserRealmProxy;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/t;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    invoke-virtual {v1}, Lio/realm/b$b;->f()V

    goto :goto_0

    .line 151
    :cond_4
    :try_start_5
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v2

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lio/realm/b$b;->f()V

    throw v2
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->b(Ljava/lang/Class;)V

    .line 118
    const-class v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lio/realm/CommentRealmProxy;->b()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 120
    :cond_0
    const-class v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Lio/realm/MediaRealmProxy;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_1
    const-class v0, Lpl/jbzd/app/model/BaseMedia;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-static {}, Lio/realm/BaseMediaRealmProxy;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_2
    const-class v0, Lpl/jbzd/app/model/Picture;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    invoke-static {}, Lio/realm/PictureRealmProxy;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_3
    const-class v0, Lpl/jbzd/app/model/User;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    invoke-static {}, Lio/realm/UserRealmProxy;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_4
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 160
    sget-object v0, Lio/realm/DefaultRealmModuleMediator;->a:Ljava/util/Set;

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
