.class public Lio/realm/BaseMediaRealmProxy;
.super Lpl/jbzd/app/model/BaseMedia;
.source "BaseMediaRealmProxy.java"

# interfaces
.implements Lio/realm/a;
.implements Lio/realm/internal/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/BaseMediaRealmProxy$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lio/realm/BaseMediaRealmProxy$a;

.field private b:Lio/realm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/k",
            "<",
            "Lpl/jbzd/app/model/BaseMedia;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lio/realm/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lio/realm/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v1, "user_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v1, "image"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v1, "movie"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v1, "height"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    const-string v1, "pictures_counter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v1, "media_added"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v1, "vote_score"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v1, "date"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v1, "share_url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v1, "share_image"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v1, "youtube"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v1, "pictures"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v1, "comments"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v1, "voted"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v1, "ratio"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v1, "in_queue"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v1, "is_favorite"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/BaseMediaRealmProxy;->e:Ljava/util/List;

    .line 175
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lpl/jbzd/app/model/BaseMedia;-><init>()V

    .line 178
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->h()V

    .line 179
    return-void
.end method

.method public static a(Lio/realm/internal/SharedRealm;Z)Lio/realm/BaseMediaRealmProxy$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0x16

    .line 854
    const-string v0, "class_BaseMedia"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 855
    const-string v0, "class_BaseMedia"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 856
    invoke-virtual {v2}, Lio/realm/internal/Table;->b()J

    move-result-wide v4

    .line 857
    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 858
    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 859
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field count is less than expected - expected 22 but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_0
    if-eqz p1, :cond_2

    .line 862
    const-string v0, "Field count is more than expected - expected 22 but was %1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 868
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v6, v0, v4

    if-gez v6, :cond_3

    .line 869
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->b(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->c(J)Lio/realm/RealmFieldType;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_0

    .line 864
    :cond_2
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field count is more than expected - expected 22 but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_3
    new-instance v0, Lio/realm/BaseMediaRealmProxy$a;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/BaseMediaRealmProxy$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 874
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 875
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary key not defined for field \'id\' in existing Realm file. @PrimaryKey was added."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_4
    invoke-virtual {v2}, Lio/realm/internal/Table;->c()J

    move-result-wide v4

    iget-wide v6, v0, Lio/realm/BaseMediaRealmProxy$a;->a:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 878
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Primary Key annotation definition was changed, from field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lio/realm/internal/Table;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to field id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 882
    :cond_5
    const-string v1, "id"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 883
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'id\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_6
    const-string v1, "id"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_7

    .line 886
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'id\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_7
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->k(J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_8

    .line 889
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot migrate an object with null value in field \'id\'. Either maintain the same type for primary key field \'id\', or remove the object with null value before migration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_8
    const-string v1, "id"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->j(J)Z

    move-result v1

    if-nez v1, :cond_9

    .line 892
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Index not defined for field \'id\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_9
    const-string v1, "user_id"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 895
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'user_id\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_a
    const-string v1, "user_id"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_b

    .line 898
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'user_id\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_b
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->b:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 901
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'user_id\' does support null values in the existing Realm file. Use corresponding boxed type for field \'user_id\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_c
    const-string v1, "type"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 904
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'type\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_d
    const-string v1, "type"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_e

    .line 907
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'type\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_e
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->c:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_f

    .line 910
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'type\' is required. Either set @Required to field \'type\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 912
    :cond_f
    const-string v1, "image"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 913
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'image\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_10
    const-string v1, "image"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_11

    .line 916
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'image\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 918
    :cond_11
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->d:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_12

    .line 919
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'image\' is required. Either set @Required to field \'image\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 921
    :cond_12
    const-string v1, "movie"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 922
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'movie\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_13
    const-string v1, "movie"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_14

    .line 925
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'movie\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 927
    :cond_14
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->e:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_15

    .line 928
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'movie\' is required. Either set @Required to field \'movie\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_15
    const-string v1, "width"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 931
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'width\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_16
    const-string v1, "width"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_17

    .line 934
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'width\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 936
    :cond_17
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->f:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 937
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'width\' does support null values in the existing Realm file. Use corresponding boxed type for field \'width\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_18
    const-string v1, "height"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 940
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'height\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_19
    const-string v1, "height"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1a

    .line 943
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'height\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_1a
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->g:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 946
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'height\' does support null values in the existing Realm file. Use corresponding boxed type for field \'height\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 948
    :cond_1b
    const-string v1, "pictures_counter"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 949
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'pictures_counter\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_1c
    const-string v1, "pictures_counter"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1d

    .line 952
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'pictures_counter\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 954
    :cond_1d
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->h:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 955
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'pictures_counter\' does support null values in the existing Realm file. Use corresponding boxed type for field \'pictures_counter\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_1e
    const-string v1, "media_added"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 958
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'media_added\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_1f
    const-string v1, "media_added"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_20

    .line 961
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'Date\' for field \'media_added\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_20
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->i:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_21

    .line 964
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'media_added\' is required. Either set @Required to field \'media_added\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 966
    :cond_21
    const-string v1, "title"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 967
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'title\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_22
    const-string v1, "title"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_23

    .line 970
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'title\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 972
    :cond_23
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->j:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_24

    .line 973
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'title\' is required. Either set @Required to field \'title\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_24
    const-string v1, "url"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 976
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'url\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 978
    :cond_25
    const-string v1, "url"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_26

    .line 979
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'url\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 981
    :cond_26
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->k:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_27

    .line 982
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'url\' is required. Either set @Required to field \'url\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 984
    :cond_27
    const-string v1, "vote_score"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 985
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'vote_score\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 987
    :cond_28
    const-string v1, "vote_score"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_29

    .line 988
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'vote_score\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 990
    :cond_29
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->l:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 991
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'vote_score\' does support null values in the existing Realm file. Use corresponding boxed type for field \'vote_score\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 993
    :cond_2a
    const-string v1, "date"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 994
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'date\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_2b
    const-string v1, "date"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2c

    .line 997
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'Date\' for field \'date\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_2c
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->m:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1000
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'date\' is required. Either set @Required to field \'date\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_2d
    const-string v1, "share_url"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1003
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'share_url\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1005
    :cond_2e
    const-string v1, "share_url"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2f

    .line 1006
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'share_url\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1008
    :cond_2f
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->n:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_30

    .line 1009
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'share_url\' is required. Either set @Required to field \'share_url\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1011
    :cond_30
    const-string v1, "share_image"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1012
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'share_image\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1014
    :cond_31
    const-string v1, "share_image"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_32

    .line 1015
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'share_image\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_32
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->o:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1018
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'share_image\' is required. Either set @Required to field \'share_image\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_33
    const-string v1, "youtube"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 1021
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'youtube\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_34
    const-string v1, "youtube"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_35

    .line 1024
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'youtube\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1026
    :cond_35
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->p:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1027
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'youtube\' is required. Either set @Required to field \'youtube\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_36
    const-string v1, "pictures"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 1030
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'pictures\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_37
    const-string v1, "pictures"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_38

    .line 1033
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'Picture\' for field \'pictures\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1035
    :cond_38
    const-string v1, "class_Picture"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 1036
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing class \'class_Picture\' for field \'pictures\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1038
    :cond_39
    const-string v1, "class_Picture"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 1039
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->q:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->e(J)Lio/realm/internal/Table;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/realm/internal/Table;->a(Lio/realm/internal/Table;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 1040
    new-instance v3, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid RealmList type for field \'pictures\': \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lio/realm/BaseMediaRealmProxy$a;->q:J

    invoke-virtual {v2, v6, v7}, Lio/realm/internal/Table;->e(J)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' expected - was \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 1042
    :cond_3a
    const-string v1, "comments"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 1043
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'comments\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_3b
    const-string v1, "comments"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3c

    .line 1046
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'Comment\' for field \'comments\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_3c
    const-string v1, "class_Comment"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1049
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing class \'class_Comment\' for field \'comments\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1051
    :cond_3d
    const-string v1, "class_Comment"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 1052
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->r:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->e(J)Lio/realm/internal/Table;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/realm/internal/Table;->a(Lio/realm/internal/Table;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 1053
    new-instance v3, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid RealmList type for field \'comments\': \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lio/realm/BaseMediaRealmProxy$a;->r:J

    invoke-virtual {v2, v6, v7}, Lio/realm/internal/Table;->e(J)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' expected - was \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 1055
    :cond_3e
    const-string v1, "voted"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1056
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'voted\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1058
    :cond_3f
    const-string v1, "voted"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_40

    .line 1059
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'voted\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1061
    :cond_40
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->s:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1062
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'voted\' does support null values in the existing Realm file. Use corresponding boxed type for field \'voted\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1064
    :cond_41
    const-string v1, "ratio"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 1065
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'ratio\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1067
    :cond_42
    const-string v1, "ratio"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_43

    .line 1068
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'float\' for field \'ratio\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1070
    :cond_43
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->t:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1071
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'ratio\' does support null values in the existing Realm file. Use corresponding boxed type for field \'ratio\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_44
    const-string v1, "in_queue"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 1074
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'in_queue\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1076
    :cond_45
    const-string v1, "in_queue"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_46

    .line 1077
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'boolean\' for field \'in_queue\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1079
    :cond_46
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->u:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1080
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'in_queue\' does support null values in the existing Realm file. Use corresponding boxed type for field \'in_queue\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1082
    :cond_47
    const-string v1, "is_favorite"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 1083
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'is_favorite\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1085
    :cond_48
    const-string v1, "is_favorite"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_49

    .line 1086
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'boolean\' for field \'is_favorite\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1088
    :cond_49
    iget-wide v4, v0, Lio/realm/BaseMediaRealmProxy$a;->v:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1089
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'is_favorite\' does support null values in the existing Realm file. Use corresponding boxed type for field \'is_favorite\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1093
    :cond_4a
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'BaseMedia\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1091
    :cond_4b
    return-object v0
.end method

.method public static a(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 780
    const-string v0, "BaseMedia"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 781
    const-string v0, "BaseMedia"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->b(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v10

    .line 782
    new-instance v0, Lio/realm/Property;

    const-string v1, "id"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v0}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 783
    new-instance v4, Lio/realm/Property;

    const-string v5, "user_id"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 784
    new-instance v4, Lio/realm/Property;

    const-string v5, "type"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 785
    new-instance v4, Lio/realm/Property;

    const-string v5, "image"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 786
    new-instance v4, Lio/realm/Property;

    const-string v5, "movie"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 787
    new-instance v4, Lio/realm/Property;

    const-string v5, "width"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 788
    new-instance v4, Lio/realm/Property;

    const-string v5, "height"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 789
    new-instance v4, Lio/realm/Property;

    const-string v5, "pictures_counter"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 790
    new-instance v4, Lio/realm/Property;

    const-string v5, "media_added"

    sget-object v6, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 791
    new-instance v4, Lio/realm/Property;

    const-string v5, "title"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 792
    new-instance v4, Lio/realm/Property;

    const-string v5, "url"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 793
    new-instance v4, Lio/realm/Property;

    const-string v5, "vote_score"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 794
    new-instance v4, Lio/realm/Property;

    const-string v5, "date"

    sget-object v6, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 795
    new-instance v4, Lio/realm/Property;

    const-string v5, "share_url"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 796
    new-instance v4, Lio/realm/Property;

    const-string v5, "share_image"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 797
    new-instance v4, Lio/realm/Property;

    const-string v5, "youtube"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 798
    const-string v0, "Picture"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    invoke-static {p0}, Lio/realm/PictureRealmProxy;->a(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    .line 801
    :cond_0
    new-instance v0, Lio/realm/Property;

    const-string v1, "pictures"

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v4, "Picture"

    invoke-virtual {p0, v4}, Lio/realm/RealmSchema;->a(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)V

    invoke-virtual {v10, v0}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 802
    const-string v0, "Comment"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 803
    invoke-static {p0}, Lio/realm/CommentRealmProxy;->a(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    .line 805
    :cond_1
    new-instance v0, Lio/realm/Property;

    const-string v1, "comments"

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v4, "Comment"

    invoke-virtual {p0, v4}, Lio/realm/RealmSchema;->a(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)V

    invoke-virtual {v10, v0}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 806
    new-instance v4, Lio/realm/Property;

    const-string v5, "voted"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 807
    new-instance v4, Lio/realm/Property;

    const-string v5, "ratio"

    sget-object v6, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 808
    new-instance v4, Lio/realm/Property;

    const-string v5, "in_queue"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 809
    new-instance v4, Lio/realm/Property;

    const-string v5, "is_favorite"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    move-object v0, v10

    .line 812
    :goto_0
    return-object v0

    :cond_2
    const-string v0, "BaseMedia"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->a(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 816
    const-string v0, "class_BaseMedia"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 817
    const-string v0, "class_BaseMedia"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 818
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 819
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "user_id"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 820
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "type"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 821
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "image"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 822
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "movie"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 823
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "width"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 824
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "height"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 825
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "pictures_counter"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 826
    sget-object v1, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-string v2, "media_added"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 827
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "title"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 828
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "url"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 829
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "vote_score"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 830
    sget-object v1, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-string v2, "date"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 831
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "share_url"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 832
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "share_image"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 833
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "youtube"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 834
    const-string v1, "class_Picture"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 835
    invoke-static {p0}, Lio/realm/PictureRealmProxy;->a(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    .line 837
    :cond_0
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v2, "pictures"

    const-string v3, "class_Picture"

    invoke-virtual {p0, v3}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    .line 838
    const-string v1, "class_Comment"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 839
    invoke-static {p0}, Lio/realm/CommentRealmProxy;->a(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    .line 841
    :cond_1
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v2, "comments"

    const-string v3, "class_Comment"

    invoke-virtual {p0, v3}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    .line 842
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "voted"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 843
    sget-object v1, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const-string v2, "ratio"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 844
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v2, "in_queue"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 845
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v2, "is_favorite"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 846
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->i(J)V

    .line 847
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 850
    :goto_0
    return-object v0

    :cond_2
    const-string v0, "class_BaseMedia"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lio/realm/l;Lpl/jbzd/app/model/BaseMedia;Lpl/jbzd/app/model/BaseMedia;Ljava/util/Map;)Lpl/jbzd/app/model/BaseMedia;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Lpl/jbzd/app/model/BaseMedia;",
            "Lpl/jbzd/app/model/BaseMedia;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)",
            "Lpl/jbzd/app/model/BaseMedia;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2124
    move-object v0, p1

    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$user_id()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$user_id(I)V

    move-object v0, p1

    .line 2125
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$type(Ljava/lang/String;)V

    move-object v0, p1

    .line 2126
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$image()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$image(Ljava/lang/String;)V

    move-object v0, p1

    .line 2127
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$movie()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$movie(Ljava/lang/String;)V

    move-object v0, p1

    .line 2128
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$width()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$width(I)V

    move-object v0, p1

    .line 2129
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$height()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$height(I)V

    move-object v0, p1

    .line 2130
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$pictures_counter()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$pictures_counter(I)V

    move-object v0, p1

    .line 2131
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$media_added()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$media_added(Ljava/util/Date;)V

    move-object v0, p1

    .line 2132
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$title(Ljava/lang/String;)V

    move-object v0, p1

    .line 2133
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$url()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$url(Ljava/lang/String;)V

    move-object v0, p1

    .line 2134
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$vote_score()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$vote_score(I)V

    move-object v0, p1

    .line 2135
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$date(Ljava/util/Date;)V

    move-object v0, p1

    .line 2136
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$share_url()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$share_url(Ljava/lang/String;)V

    move-object v0, p1

    .line 2137
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$share_image()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$share_image(Ljava/lang/String;)V

    move-object v0, p1

    .line 2138
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$youtube()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$youtube(Ljava/lang/String;)V

    move-object v0, p2

    .line 2139
    check-cast v0, Lio/realm/a;

    invoke-interface {v0}, Lio/realm/a;->realmGet$pictures()Lio/realm/q;

    move-result-object v3

    move-object v0, p1

    .line 2140
    check-cast v0, Lio/realm/a;

    invoke-interface {v0}, Lio/realm/a;->realmGet$pictures()Lio/realm/q;

    move-result-object v4

    .line 2141
    invoke-virtual {v4}, Lio/realm/q;->clear()V

    .line 2142
    if-eqz v3, :cond_1

    move v1, v2

    .line 2143
    :goto_0
    invoke-virtual {v3}, Lio/realm/q;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2144
    invoke-virtual {v3, v1}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Picture;

    .line 2145
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Picture;

    .line 2146
    if-eqz v0, :cond_0

    .line 2147
    invoke-virtual {v4, v0}, Lio/realm/q;->a(Lio/realm/t;)Z

    .line 2143
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2149
    :cond_0
    invoke-virtual {v3, v1}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Picture;

    invoke-static {p0, v0, v5, p3}, Lio/realm/PictureRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/Picture;ZLjava/util/Map;)Lpl/jbzd/app/model/Picture;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_1

    :cond_1
    move-object v0, p2

    .line 2153
    check-cast v0, Lio/realm/a;

    invoke-interface {v0}, Lio/realm/a;->realmGet$comments()Lio/realm/q;

    move-result-object v1

    move-object v0, p1

    .line 2154
    check-cast v0, Lio/realm/a;

    invoke-interface {v0}, Lio/realm/a;->realmGet$comments()Lio/realm/q;

    move-result-object v3

    .line 2155
    invoke-virtual {v3}, Lio/realm/q;->clear()V

    .line 2156
    if-eqz v1, :cond_3

    .line 2157
    :goto_2
    invoke-virtual {v1}, Lio/realm/q;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 2158
    invoke-virtual {v1, v2}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 2159
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 2160
    if-eqz v0, :cond_2

    .line 2161
    invoke-virtual {v3, v0}, Lio/realm/q;->a(Lio/realm/t;)Z

    .line 2157
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2163
    :cond_2
    invoke-virtual {v1, v2}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-static {p0, v0, v5, p3}, Lio/realm/CommentRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/Comment;ZLjava/util/Map;)Lpl/jbzd/app/model/Comment;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_3

    :cond_3
    move-object v0, p1

    .line 2167
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$voted()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$voted(I)V

    move-object v0, p1

    .line 2168
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$ratio()F

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$ratio(F)V

    move-object v0, p1

    .line 2169
    check-cast v0, Lio/realm/a;

    move-object v1, p2

    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$in_queue()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$in_queue(Z)V

    move-object v0, p1

    .line 2170
    check-cast v0, Lio/realm/a;

    check-cast p2, Lio/realm/a;

    invoke-interface {p2}, Lio/realm/a;->realmGet$is_favorite()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/a;->realmSet$is_favorite(Z)V

    .line 2171
    return-object p1
.end method

.method public static a(Lio/realm/l;Lpl/jbzd/app/model/BaseMedia;ZLjava/util/Map;)Lpl/jbzd/app/model/BaseMedia;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Lpl/jbzd/app/model/BaseMedia;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)",
            "Lpl/jbzd/app/model/BaseMedia;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1513
    instance-of v2, p1, Lio/realm/internal/l;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lio/realm/internal/l;

    invoke-interface {v2}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lio/realm/internal/l;

    invoke-interface {v2}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    iget-wide v2, v2, Lio/realm/b;->c:J

    iget-wide v6, p0, Lio/realm/l;->c:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 1514
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1516
    :cond_0
    instance-of v2, p1, Lio/realm/internal/l;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lio/realm/internal/l;

    invoke-interface {v2}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lio/realm/internal/l;

    invoke-interface {v2}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/realm/l;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1546
    :goto_0
    return-object p1

    .line 1519
    :cond_1
    sget-object v2, Lio/realm/b;->g:Lio/realm/b$c;

    invoke-virtual {v2}, Lio/realm/b$c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/b$b;

    .line 1520
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/internal/l;

    .line 1521
    if-eqz v3, :cond_2

    .line 1522
    check-cast v3, Lpl/jbzd/app/model/BaseMedia;

    move-object p1, v3

    goto :goto_0

    .line 1524
    :cond_2
    const/4 v5, 0x0

    .line 1526
    if-eqz p2, :cond_5

    .line 1527
    const-class v3, Lpl/jbzd/app/model/BaseMedia;

    invoke-virtual {p0, v3}, Lio/realm/l;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v6

    .line 1528
    invoke-virtual {v6}, Lio/realm/internal/Table;->c()J

    move-result-wide v8

    move-object v3, p1

    .line 1529
    check-cast v3, Lio/realm/a;

    invoke-interface {v3}, Lio/realm/a;->realmGet$id()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v6, v8, v9, v10, v11}, Lio/realm/internal/Table;->b(JJ)J

    move-result-wide v8

    .line 1530
    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-eqz v3, :cond_3

    .line 1532
    :try_start_0
    invoke-virtual {v6, v8, v9}, Lio/realm/internal/Table;->f(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-object v3, p0, Lio/realm/l;->f:Lio/realm/RealmSchema;

    const-class v5, Lpl/jbzd/app/model/BaseMedia;

    invoke-virtual {v3, v5}, Lio/realm/RealmSchema;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lio/realm/b$b;->a(Lio/realm/b;Lio/realm/internal/n;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 1533
    new-instance v4, Lio/realm/BaseMediaRealmProxy;

    invoke-direct {v4}, Lio/realm/BaseMediaRealmProxy;-><init>()V

    .line 1534
    move-object v0, v4

    check-cast v0, Lio/realm/internal/l;

    move-object v3, v0

    invoke-interface {p3, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1536
    invoke-virtual {v2}, Lio/realm/b$b;->f()V

    move v2, p2

    .line 1543
    :goto_1
    if-eqz v2, :cond_4

    .line 1544
    invoke-static {p0, v4, p1, p3}, Lio/realm/BaseMediaRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/BaseMedia;Lpl/jbzd/app/model/BaseMedia;Ljava/util/Map;)Lpl/jbzd/app/model/BaseMedia;

    move-result-object p1

    goto :goto_0

    .line 1536
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lio/realm/b$b;->f()V

    throw v3

    :cond_3
    move v2, v4

    move-object v4, v5

    .line 1539
    goto :goto_1

    .line 1546
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lio/realm/BaseMediaRealmProxy;->b(Lio/realm/l;Lpl/jbzd/app/model/BaseMedia;ZLjava/util/Map;)Lpl/jbzd/app/model/BaseMedia;

    move-result-object p1

    goto :goto_0

    :cond_5
    move v2, p2

    move-object v4, v5

    goto :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1098
    const-string v0, "class_BaseMedia"

    return-object v0
.end method

.method public static b(Lio/realm/l;Lpl/jbzd/app/model/BaseMedia;ZLjava/util/Map;)Lpl/jbzd/app/model/BaseMedia;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Lpl/jbzd/app/model/BaseMedia;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)",
            "Lpl/jbzd/app/model/BaseMedia;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1552
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/l;

    .line 1553
    if-eqz v0, :cond_0

    .line 1554
    check-cast v0, Lpl/jbzd/app/model/BaseMedia;

    .line 1608
    :goto_0
    return-object v0

    .line 1557
    :cond_0
    const-class v1, Lpl/jbzd/app/model/BaseMedia;

    move-object v0, p1

    check-cast v0, Lio/realm/a;

    invoke-interface {v0}, Lio/realm/a;->realmGet$id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v3, v2}, Lio/realm/l;->a(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/BaseMedia;

    move-object v1, v0

    .line 1558
    check-cast v1, Lio/realm/internal/l;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1559
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$user_id()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$user_id(I)V

    move-object v1, v0

    .line 1560
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$type()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$type(Ljava/lang/String;)V

    move-object v1, v0

    .line 1561
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$image()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$image(Ljava/lang/String;)V

    move-object v1, v0

    .line 1562
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$movie()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$movie(Ljava/lang/String;)V

    move-object v1, v0

    .line 1563
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$width()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$width(I)V

    move-object v1, v0

    .line 1564
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$height()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$height(I)V

    move-object v1, v0

    .line 1565
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$pictures_counter()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$pictures_counter(I)V

    move-object v1, v0

    .line 1566
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$media_added()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$media_added(Ljava/util/Date;)V

    move-object v1, v0

    .line 1567
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$title()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$title(Ljava/lang/String;)V

    move-object v1, v0

    .line 1568
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$url()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$url(Ljava/lang/String;)V

    move-object v1, v0

    .line 1569
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$vote_score()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$vote_score(I)V

    move-object v1, v0

    .line 1570
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$date()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$date(Ljava/util/Date;)V

    move-object v1, v0

    .line 1571
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$share_url()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$share_url(Ljava/lang/String;)V

    move-object v1, v0

    .line 1572
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$share_image()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$share_image(Ljava/lang/String;)V

    move-object v1, v0

    .line 1573
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$youtube()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$youtube(Ljava/lang/String;)V

    move-object v1, p1

    .line 1575
    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$pictures()Lio/realm/q;

    move-result-object v4

    .line 1576
    if-eqz v4, :cond_2

    move-object v1, v0

    .line 1577
    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$pictures()Lio/realm/q;

    move-result-object v5

    move v2, v3

    .line 1578
    :goto_1
    invoke-virtual {v4}, Lio/realm/q;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 1579
    invoke-virtual {v4, v2}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Picture;

    .line 1580
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Picture;

    .line 1581
    if-eqz v1, :cond_1

    .line 1582
    invoke-virtual {v5, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    .line 1578
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1584
    :cond_1
    invoke-virtual {v4, v2}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Picture;

    invoke-static {p0, v1, p2, p3}, Lio/realm/PictureRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/Picture;ZLjava/util/Map;)Lpl/jbzd/app/model/Picture;

    move-result-object v1

    invoke-virtual {v5, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_2

    :cond_2
    move-object v1, p1

    .line 1590
    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$comments()Lio/realm/q;

    move-result-object v2

    .line 1591
    if-eqz v2, :cond_4

    move-object v1, v0

    .line 1592
    check-cast v1, Lio/realm/a;

    invoke-interface {v1}, Lio/realm/a;->realmGet$comments()Lio/realm/q;

    move-result-object v4

    .line 1593
    :goto_3
    invoke-virtual {v2}, Lio/realm/q;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 1594
    invoke-virtual {v2, v3}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Comment;

    .line 1595
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Comment;

    .line 1596
    if-eqz v1, :cond_3

    .line 1597
    invoke-virtual {v4, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    .line 1593
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1599
    :cond_3
    invoke-virtual {v2, v3}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Comment;

    invoke-static {p0, v1, p2, p3}, Lio/realm/CommentRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/Comment;ZLjava/util/Map;)Lpl/jbzd/app/model/Comment;

    move-result-object v1

    invoke-virtual {v4, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_4

    :cond_4
    move-object v1, v0

    .line 1604
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$voted()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$voted(I)V

    move-object v1, v0

    .line 1605
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$ratio()F

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$ratio(F)V

    move-object v1, v0

    .line 1606
    check-cast v1, Lio/realm/a;

    move-object v2, p1

    check-cast v2, Lio/realm/a;

    invoke-interface {v2}, Lio/realm/a;->realmGet$in_queue()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$in_queue(Z)V

    move-object v1, v0

    .line 1607
    check-cast v1, Lio/realm/a;

    check-cast p1, Lio/realm/a;

    invoke-interface {p1}, Lio/realm/a;->realmGet$is_favorite()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/a;->realmSet$is_favorite(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    if-eqz v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 186
    :cond_0
    sget-object v0, Lio/realm/b;->g:Lio/realm/b$c;

    invoke-virtual {v0}, Lio/realm/b$c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/b$b;

    .line 187
    invoke-virtual {v0}, Lio/realm/b$b;->c()Lio/realm/internal/c;

    move-result-object v1

    check-cast v1, Lio/realm/BaseMediaRealmProxy$a;

    iput-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    .line 188
    new-instance v1, Lio/realm/k;

    invoke-direct {v1, p0}, Lio/realm/k;-><init>(Lio/realm/t;)V

    iput-object v1, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    .line 189
    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->a()Lio/realm/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/k;->a(Lio/realm/b;)V

    .line 190
    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/k;->a(Lio/realm/internal/n;)V

    .line 191
    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/k;->a(Z)V

    .line 192
    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/k;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public c()Lio/realm/k;
    .locals 1

    .prologue
    .line 2176
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2194
    if-ne p0, p1, :cond_1

    .line 2208
    :cond_0
    :goto_0
    return v0

    .line 2195
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 2196
    :cond_3
    check-cast p1, Lio/realm/BaseMediaRealmProxy;

    .line 2198
    iget-object v2, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v2

    .line 2199
    iget-object v3, p1, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v3

    .line 2200
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 2202
    :cond_6
    iget-object v2, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v2

    .line 2203
    iget-object v3, p1, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v3

    .line 2204
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 2206
    :cond_9
    iget-object v2, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v4}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2181
    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v1}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v1

    .line 2182
    iget-object v2, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v2

    .line 2183
    iget-object v3, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    .line 2186
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 2187
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 2188
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 2189
    return v0

    :cond_1
    move v1, v0

    .line 2186
    goto :goto_0
.end method

.method public realmGet$comments()Lio/realm/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 651
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->d:Lio/realm/q;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->d:Lio/realm/q;

    .line 656
    :goto_0
    return-object v0

    .line 654
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->r:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v0

    .line 655
    new-instance v1, Lio/realm/q;

    const-class v2, Lpl/jbzd/app/model/Comment;

    iget-object v3, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/q;-><init>(Ljava/lang/Class;Lio/realm/internal/LinkView;Lio/realm/b;)V

    iput-object v1, p0, Lio/realm/BaseMediaRealmProxy;->d:Lio/realm/q;

    .line 656
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->d:Lio/realm/q;

    goto :goto_0
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 4

    .prologue
    .line 484
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 485
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->m:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    const/4 v0, 0x0

    .line 488
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->m:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getDate(J)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public realmGet$height()I
    .locals 4

    .prologue
    .line 337
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 338
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$id()I
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 198
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$image()Ljava/lang/String;
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 262
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$in_queue()Z
    .locals 4

    .prologue
    .line 741
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 742
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->u:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$is_favorite()Z
    .locals 4

    .prologue
    .line 761
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 762
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->v:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$media_added()Ljava/util/Date;
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 378
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const/4 v0, 0x0

    .line 381
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getDate(J)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public realmGet$movie()Ljava/lang/String;
    .locals 4

    .prologue
    .line 289
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 290
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$pictures()Lio/realm/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Picture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 600
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->c:Lio/realm/q;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->c:Lio/realm/q;

    .line 605
    :goto_0
    return-object v0

    .line 603
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->q:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v0

    .line 604
    new-instance v1, Lio/realm/q;

    const-class v2, Lpl/jbzd/app/model/Picture;

    iget-object v3, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/q;-><init>(Ljava/lang/Class;Lio/realm/internal/LinkView;Lio/realm/b;)V

    iput-object v1, p0, Lio/realm/BaseMediaRealmProxy;->c:Lio/realm/q;

    .line 605
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->c:Lio/realm/q;

    goto :goto_0
.end method

.method public realmGet$pictures_counter()I
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 358
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$ratio()F
    .locals 4

    .prologue
    .line 721
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 722
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->t:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public realmGet$share_image()Ljava/lang/String;
    .locals 4

    .prologue
    .line 543
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 544
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->o:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$share_url()Ljava/lang/String;
    .locals 4

    .prologue
    .line 515
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 516
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->n:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 4

    .prologue
    .line 408
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 409
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 234
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .locals 4

    .prologue
    .line 436
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 437
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$user_id()I
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 214
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$vote_score()I
    .locals 4

    .prologue
    .line 464
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 465
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->l:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$voted()I
    .locals 4

    .prologue
    .line 701
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 702
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->s:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$width()I
    .locals 4

    .prologue
    .line 317
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 318
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$youtube()Ljava/lang/String;
    .locals 4

    .prologue
    .line 571
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 572
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->p:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$comments(Lio/realm/q;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 661
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 662
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 697
    :cond_0
    return-void

    .line 665
    :cond_1
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->d()Ljava/util/List;

    move-result-object v0

    const-string v1, "comments"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lio/realm/q;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 669
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    check-cast v0, Lio/realm/l;

    .line 671
    new-instance v2, Lio/realm/q;

    invoke-direct {v2}, Lio/realm/q;-><init>()V

    .line 672
    invoke-virtual {p1}, Lio/realm/q;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Comment;

    .line 673
    if-eqz v1, :cond_2

    invoke-static {v1}, Lio/realm/u;->isManaged(Lio/realm/t;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 674
    :cond_2
    invoke-virtual {v2, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_0

    .line 676
    :cond_3
    invoke-virtual {v0, v1}, Lio/realm/l;->a(Lio/realm/t;)Lio/realm/t;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 682
    :cond_5
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 683
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->r:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v2

    .line 684
    invoke-virtual {v2}, Lio/realm/internal/LinkView;->a()V

    .line 685
    if-eqz p1, :cond_0

    .line 688
    invoke-virtual {p1}, Lio/realm/q;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/t;

    .line 689
    invoke-static {v0}, Lio/realm/u;->isManaged(Lio/realm/t;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lio/realm/u;->isValid(Lio/realm/t;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 690
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Each element of \'value\' must be a valid managed object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v1, v0

    .line 692
    check-cast v1, Lio/realm/internal/l;

    invoke-interface {v1}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v1

    iget-object v4, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v4}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v4

    if-eq v1, v4, :cond_8

    .line 693
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Each element of \'value\' must belong to the same Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_8
    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/LinkView;->b(J)V

    goto :goto_1
.end method

.method public realmSet$date(Ljava/util/Date;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 492
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 497
    if-nez p1, :cond_1

    .line 498
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/BaseMediaRealmProxy$a;->m:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 501
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/BaseMediaRealmProxy$a;->m:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/util/Date;Z)V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 506
    if-nez p1, :cond_3

    .line 507
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->m:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 510
    :cond_3
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->m:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setDate(JLjava/util/Date;)V

    goto :goto_0
.end method

.method public realmSet$height(I)V
    .locals 9

    .prologue
    .line 342
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 347
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/BaseMediaRealmProxy$a;->g:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 352
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->g:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$id(I)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 208
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$image(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 266
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 271
    if-nez p1, :cond_1

    .line 272
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/BaseMediaRealmProxy$a;->d:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 275
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/BaseMediaRealmProxy$a;->d:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 280
    if-nez p1, :cond_3

    .line 281
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 284
    :cond_3
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->d:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$in_queue(Z)V
    .locals 8

    .prologue
    .line 746
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    :goto_0
    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 751
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/BaseMediaRealmProxy$a;->u:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->a(JJZZ)V

    goto :goto_0

    .line 755
    :cond_1
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 756
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->u:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$is_favorite(Z)V
    .locals 8

    .prologue
    .line 766
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 771
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/BaseMediaRealmProxy$a;->v:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->a(JJZZ)V

    goto :goto_0

    .line 775
    :cond_1
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 776
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->v:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$media_added(Ljava/util/Date;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 385
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 390
    if-nez p1, :cond_1

    .line 391
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/BaseMediaRealmProxy$a;->i:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 394
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/BaseMediaRealmProxy$a;->i:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/util/Date;Z)V

    goto :goto_0

    .line 398
    :cond_2
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 399
    if-nez p1, :cond_3

    .line 400
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 403
    :cond_3
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setDate(JLjava/util/Date;)V

    goto :goto_0
.end method

.method public realmSet$movie(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 294
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 299
    if-nez p1, :cond_1

    .line 300
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/BaseMediaRealmProxy$a;->e:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 303
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/BaseMediaRealmProxy$a;->e:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 308
    if-nez p1, :cond_3

    .line 309
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 312
    :cond_3
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->e:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$pictures(Lio/realm/q;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Picture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 611
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    :cond_0
    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->d()Ljava/util/List;

    move-result-object v0

    const-string v1, "pictures"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lio/realm/q;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 618
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    check-cast v0, Lio/realm/l;

    .line 620
    new-instance v2, Lio/realm/q;

    invoke-direct {v2}, Lio/realm/q;-><init>()V

    .line 621
    invoke-virtual {p1}, Lio/realm/q;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Picture;

    .line 622
    if-eqz v1, :cond_2

    invoke-static {v1}, Lio/realm/u;->isManaged(Lio/realm/t;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 623
    :cond_2
    invoke-virtual {v2, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_0

    .line 625
    :cond_3
    invoke-virtual {v0, v1}, Lio/realm/l;->a(Lio/realm/t;)Lio/realm/t;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 631
    :cond_5
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 632
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->q:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v2

    .line 633
    invoke-virtual {v2}, Lio/realm/internal/LinkView;->a()V

    .line 634
    if-eqz p1, :cond_0

    .line 637
    invoke-virtual {p1}, Lio/realm/q;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/t;

    .line 638
    invoke-static {v0}, Lio/realm/u;->isManaged(Lio/realm/t;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lio/realm/u;->isValid(Lio/realm/t;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 639
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Each element of \'value\' must be a valid managed object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v1, v0

    .line 641
    check-cast v1, Lio/realm/internal/l;

    invoke-interface {v1}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v1

    iget-object v4, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v4}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v4

    if-eq v1, v4, :cond_8

    .line 642
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Each element of \'value\' must belong to the same Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_8
    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/LinkView;->b(J)V

    goto :goto_1
.end method

.method public realmSet$pictures_counter(I)V
    .locals 9

    .prologue
    .line 362
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 367
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/BaseMediaRealmProxy$a;->h:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 372
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->h:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$ratio(F)V
    .locals 8

    .prologue
    .line 726
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 731
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/BaseMediaRealmProxy$a;->t:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->a(JJFZ)V

    goto :goto_0

    .line 735
    :cond_1
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 736
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->t:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setFloat(JF)V

    goto :goto_0
.end method

.method public realmSet$share_image(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 548
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 553
    if-nez p1, :cond_1

    .line 554
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/BaseMediaRealmProxy$a;->o:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 557
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/BaseMediaRealmProxy$a;->o:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 561
    :cond_2
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 562
    if-nez p1, :cond_3

    .line 563
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->o:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 566
    :cond_3
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->o:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$share_url(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 520
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 525
    if-nez p1, :cond_1

    .line 526
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/BaseMediaRealmProxy$a;->n:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 529
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/BaseMediaRealmProxy$a;->n:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 533
    :cond_2
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 534
    if-nez p1, :cond_3

    .line 535
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->n:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 538
    :cond_3
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->n:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 413
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 418
    if-nez p1, :cond_1

    .line 419
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/BaseMediaRealmProxy$a;->j:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 422
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/BaseMediaRealmProxy$a;->j:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 427
    if-nez p1, :cond_3

    .line 428
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 431
    :cond_3
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->j:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 238
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 243
    if-nez p1, :cond_1

    .line 244
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/BaseMediaRealmProxy$a;->c:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/BaseMediaRealmProxy$a;->c:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 252
    if-nez p1, :cond_3

    .line 253
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 256
    :cond_3
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 441
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 446
    if-nez p1, :cond_1

    .line 447
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/BaseMediaRealmProxy$a;->k:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 450
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/BaseMediaRealmProxy$a;->k:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 454
    :cond_2
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 455
    if-nez p1, :cond_3

    .line 456
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 459
    :cond_3
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->k:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$user_id(I)V
    .locals 9

    .prologue
    .line 218
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/BaseMediaRealmProxy$a;->b:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 228
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->b:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$vote_score(I)V
    .locals 9

    .prologue
    .line 469
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 474
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/BaseMediaRealmProxy$a;->l:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 478
    :cond_1
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 479
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->l:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$voted(I)V
    .locals 9

    .prologue
    .line 706
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 711
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/BaseMediaRealmProxy$a;->s:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 715
    :cond_1
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 716
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->s:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$width(I)V
    .locals 9

    .prologue
    .line 322
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 327
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/BaseMediaRealmProxy$a;->f:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 332
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->f:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$youtube(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 576
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 581
    if-nez p1, :cond_1

    .line 582
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/BaseMediaRealmProxy$a;->p:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 585
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/BaseMediaRealmProxy$a;->p:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 589
    :cond_2
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 590
    if-nez p1, :cond_3

    .line 591
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->p:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 594
    :cond_3
    iget-object v0, p0, Lio/realm/BaseMediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/BaseMediaRealmProxy;->a:Lio/realm/BaseMediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/BaseMediaRealmProxy$a;->p:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method
