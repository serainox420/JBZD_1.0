.class public Lio/realm/MediaRealmProxy;
.super Lpl/jbzd/app/model/Media;
.source "MediaRealmProxy.java"

# interfaces
.implements Lio/realm/f;
.implements Lio/realm/internal/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/MediaRealmProxy$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/List;
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
.field private a:Lio/realm/MediaRealmProxy$a;

.field private b:Lio/realm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/k",
            "<",
            "Lpl/jbzd/app/model/Media;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    const-string v1, "user_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v1, "image"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v1, "movie"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v1, "height"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v1, "pictures_counter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    const-string v1, "media_added"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v1, "vote_score"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v1, "date"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v1, "share_url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v1, "share_image"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v1, "youtube"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v1, "pictures"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v1, "comments_counter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v1, "voted"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v1, "ratio"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v1, "in_queue"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v1, "is_favorite"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/MediaRealmProxy;->d:Ljava/util/List;

    .line 174
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lpl/jbzd/app/model/Media;-><init>()V

    .line 177
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->h()V

    .line 178
    return-void
.end method

.method public static a(Lio/realm/internal/SharedRealm;Z)Lio/realm/MediaRealmProxy$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0x16

    .line 816
    const-string v0, "class_Media"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 817
    const-string v0, "class_Media"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 818
    invoke-virtual {v2}, Lio/realm/internal/Table;->b()J

    move-result-wide v4

    .line 819
    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 820
    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 821
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

    .line 823
    :cond_0
    if-eqz p1, :cond_2

    .line 824
    const-string v0, "Field count is more than expected - expected 22 but was %1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 830
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v6, v0, v4

    if-gez v6, :cond_3

    .line 831
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->b(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->c(J)Lio/realm/RealmFieldType;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_0

    .line 826
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

    .line 834
    :cond_3
    new-instance v0, Lio/realm/MediaRealmProxy$a;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/MediaRealmProxy$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 836
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 837
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary key not defined for field \'id\' in existing Realm file. @PrimaryKey was added."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_4
    invoke-virtual {v2}, Lio/realm/internal/Table;->c()J

    move-result-wide v4

    iget-wide v6, v0, Lio/realm/MediaRealmProxy$a;->a:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 840
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

    .line 844
    :cond_5
    const-string v1, "id"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 845
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'id\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_6
    const-string v1, "id"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_7

    .line 848
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'id\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_7
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->k(J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_8

    .line 851
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot migrate an object with null value in field \'id\'. Either maintain the same type for primary key field \'id\', or remove the object with null value before migration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_8
    const-string v1, "id"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->j(J)Z

    move-result v1

    if-nez v1, :cond_9

    .line 854
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Index not defined for field \'id\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_9
    const-string v1, "user_id"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 857
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'user_id\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_a
    const-string v1, "user_id"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_b

    .line 860
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'user_id\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 862
    :cond_b
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->b:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 863
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'user_id\' does support null values in the existing Realm file. Use corresponding boxed type for field \'user_id\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_c
    const-string v1, "type"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 866
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'type\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_d
    const-string v1, "type"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_e

    .line 869
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'type\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_e
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->c:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_f

    .line 872
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'type\' is required. Either set @Required to field \'type\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_f
    const-string v1, "image"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 875
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'image\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_10
    const-string v1, "image"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_11

    .line 878
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'image\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_11
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->d:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_12

    .line 881
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'image\' is required. Either set @Required to field \'image\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_12
    const-string v1, "movie"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 884
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'movie\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_13
    const-string v1, "movie"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_14

    .line 887
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'movie\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 889
    :cond_14
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->e:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_15

    .line 890
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'movie\' is required. Either set @Required to field \'movie\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 892
    :cond_15
    const-string v1, "width"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 893
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'width\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_16
    const-string v1, "width"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_17

    .line 896
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'width\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_17
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->f:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 899
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'width\' does support null values in the existing Realm file. Use corresponding boxed type for field \'width\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_18
    const-string v1, "height"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 902
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'height\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_19
    const-string v1, "height"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1a

    .line 905
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'height\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_1a
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->g:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 908
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'height\' does support null values in the existing Realm file. Use corresponding boxed type for field \'height\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_1b
    const-string v1, "pictures_counter"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 911
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'pictures_counter\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_1c
    const-string v1, "pictures_counter"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1d

    .line 914
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'pictures_counter\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_1d
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->h:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 917
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'pictures_counter\' does support null values in the existing Realm file. Use corresponding boxed type for field \'pictures_counter\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_1e
    const-string v1, "media_added"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 920
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'media_added\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_1f
    const-string v1, "media_added"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_20

    .line 923
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'Date\' for field \'media_added\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 925
    :cond_20
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->i:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_21

    .line 926
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'media_added\' is required. Either set @Required to field \'media_added\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_21
    const-string v1, "title"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 929
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'title\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_22
    const-string v1, "title"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_23

    .line 932
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'title\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 934
    :cond_23
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->j:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_24

    .line 935
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'title\' is required. Either set @Required to field \'title\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_24
    const-string v1, "url"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 938
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'url\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_25
    const-string v1, "url"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_26

    .line 941
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'url\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_26
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->k:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_27

    .line 944
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'url\' is required. Either set @Required to field \'url\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_27
    const-string v1, "vote_score"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 947
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'vote_score\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_28
    const-string v1, "vote_score"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_29

    .line 950
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'vote_score\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_29
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->l:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 953
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'vote_score\' does support null values in the existing Realm file. Use corresponding boxed type for field \'vote_score\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_2a
    const-string v1, "date"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 956
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'date\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_2b
    const-string v1, "date"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2c

    .line 959
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'Date\' for field \'date\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 961
    :cond_2c
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->m:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 962
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'date\' is required. Either set @Required to field \'date\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_2d
    const-string v1, "share_url"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 965
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'share_url\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 967
    :cond_2e
    const-string v1, "share_url"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2f

    .line 968
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'share_url\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 970
    :cond_2f
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->n:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_30

    .line 971
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'share_url\' is required. Either set @Required to field \'share_url\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_30
    const-string v1, "share_image"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 974
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'share_image\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 976
    :cond_31
    const-string v1, "share_image"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_32

    .line 977
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'share_image\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 979
    :cond_32
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->o:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_33

    .line 980
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'share_image\' is required. Either set @Required to field \'share_image\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 982
    :cond_33
    const-string v1, "youtube"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 983
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'youtube\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 985
    :cond_34
    const-string v1, "youtube"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_35

    .line 986
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'youtube\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_35
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->p:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-nez v1, :cond_36

    .line 989
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'youtube\' is required. Either set @Required to field \'youtube\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 991
    :cond_36
    const-string v1, "pictures"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 992
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'pictures\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_37
    const-string v1, "pictures"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_38

    .line 995
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'Picture\' for field \'pictures\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_38
    const-string v1, "class_Picture"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 998
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing class \'class_Picture\' for field \'pictures\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_39
    const-string v1, "class_Picture"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 1001
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->q:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->e(J)Lio/realm/internal/Table;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/realm/internal/Table;->a(Lio/realm/internal/Table;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 1002
    new-instance v3, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid RealmList type for field \'pictures\': \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lio/realm/MediaRealmProxy$a;->q:J

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

    .line 1004
    :cond_3a
    const-string v1, "comments_counter"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 1005
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'comments_counter\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_3b
    const-string v1, "comments_counter"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3c

    .line 1008
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'comments_counter\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_3c
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->r:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1011
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'comments_counter\' does support null values in the existing Realm file. Use corresponding boxed type for field \'comments_counter\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1013
    :cond_3d
    const-string v1, "voted"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1014
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'voted\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_3e
    const-string v1, "voted"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3f

    .line 1017
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'voted\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1019
    :cond_3f
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->s:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1020
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'voted\' does support null values in the existing Realm file. Use corresponding boxed type for field \'voted\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1022
    :cond_40
    const-string v1, "ratio"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1023
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'ratio\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1025
    :cond_41
    const-string v1, "ratio"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_42

    .line 1026
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'float\' for field \'ratio\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1028
    :cond_42
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->t:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1029
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'ratio\' does support null values in the existing Realm file. Use corresponding boxed type for field \'ratio\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_43
    const-string v1, "in_queue"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 1032
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'in_queue\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1034
    :cond_44
    const-string v1, "in_queue"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_45

    .line 1035
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'boolean\' for field \'in_queue\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_45
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->u:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1038
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'in_queue\' does support null values in the existing Realm file. Use corresponding boxed type for field \'in_queue\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1040
    :cond_46
    const-string v1, "is_favorite"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 1041
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'is_favorite\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_47
    const-string v1, "is_favorite"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_48

    .line 1044
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'boolean\' for field \'is_favorite\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1046
    :cond_48
    iget-wide v4, v0, Lio/realm/MediaRealmProxy$a;->v:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->a(J)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1047
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'is_favorite\' does support null values in the existing Realm file. Use corresponding boxed type for field \'is_favorite\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1051
    :cond_49
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'Media\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1049
    :cond_4a
    return-object v0
.end method

.method public static a(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 748
    const-string v0, "Media"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 749
    const-string v0, "Media"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->b(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v10

    .line 750
    new-instance v0, Lio/realm/Property;

    const-string v1, "id"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v0}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 751
    new-instance v4, Lio/realm/Property;

    const-string v5, "user_id"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 752
    new-instance v4, Lio/realm/Property;

    const-string v5, "type"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 753
    new-instance v4, Lio/realm/Property;

    const-string v5, "image"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 754
    new-instance v4, Lio/realm/Property;

    const-string v5, "movie"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 755
    new-instance v4, Lio/realm/Property;

    const-string v5, "width"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 756
    new-instance v4, Lio/realm/Property;

    const-string v5, "height"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 757
    new-instance v4, Lio/realm/Property;

    const-string v5, "pictures_counter"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 758
    new-instance v4, Lio/realm/Property;

    const-string v5, "media_added"

    sget-object v6, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 759
    new-instance v4, Lio/realm/Property;

    const-string v5, "title"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 760
    new-instance v4, Lio/realm/Property;

    const-string v5, "url"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 761
    new-instance v4, Lio/realm/Property;

    const-string v5, "vote_score"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 762
    new-instance v4, Lio/realm/Property;

    const-string v5, "date"

    sget-object v6, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 763
    new-instance v4, Lio/realm/Property;

    const-string v5, "share_url"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 764
    new-instance v4, Lio/realm/Property;

    const-string v5, "share_image"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 765
    new-instance v4, Lio/realm/Property;

    const-string v5, "youtube"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v7

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 766
    const-string v0, "Picture"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    invoke-static {p0}, Lio/realm/PictureRealmProxy;->a(Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    .line 769
    :cond_0
    new-instance v0, Lio/realm/Property;

    const-string v1, "pictures"

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v4, "Picture"

    invoke-virtual {p0, v4}, Lio/realm/RealmSchema;->a(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)V

    invoke-virtual {v10, v0}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 770
    new-instance v4, Lio/realm/Property;

    const-string v5, "comments_counter"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 771
    new-instance v4, Lio/realm/Property;

    const-string v5, "voted"

    sget-object v6, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 772
    new-instance v4, Lio/realm/Property;

    const-string v5, "ratio"

    sget-object v6, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 773
    new-instance v4, Lio/realm/Property;

    const-string v5, "in_queue"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    .line 774
    new-instance v4, Lio/realm/Property;

    const-string v5, "is_favorite"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    move v8, v7

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    invoke-virtual {v10, v4}, Lio/realm/RealmObjectSchema;->a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;

    move-object v0, v10

    .line 777
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "Media"

    invoke-virtual {p0, v0}, Lio/realm/RealmSchema;->a(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 781
    const-string v0, "class_Media"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 782
    const-string v0, "class_Media"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 783
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 784
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "user_id"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 785
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "type"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 786
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "image"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 787
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "movie"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 788
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "width"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 789
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "height"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 790
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "pictures_counter"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 791
    sget-object v1, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-string v2, "media_added"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 792
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "title"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 793
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "url"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 794
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "vote_score"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 795
    sget-object v1, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const-string v2, "date"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 796
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "share_url"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 797
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "share_image"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 798
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "youtube"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 799
    const-string v1, "class_Picture"

    invoke-virtual {p0, v1}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    invoke-static {p0}, Lio/realm/PictureRealmProxy;->a(Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    .line 802
    :cond_0
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v2, "pictures"

    const-string v3, "class_Picture"

    invoke-virtual {p0, v3}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    .line 803
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "comments_counter"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 804
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "voted"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 805
    sget-object v1, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    const-string v2, "ratio"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 806
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v2, "in_queue"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 807
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v2, "is_favorite"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 808
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->i(J)V

    .line 809
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 812
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "class_Media"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lio/realm/l;Lpl/jbzd/app/model/Media;Lpl/jbzd/app/model/Media;Ljava/util/Map;)Lpl/jbzd/app/model/Media;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Lpl/jbzd/app/model/Media;",
            "Lpl/jbzd/app/model/Media;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)",
            "Lpl/jbzd/app/model/Media;"
        }
    .end annotation

    .prologue
    .line 1990
    move-object v0, p1

    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$user_id()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$user_id(I)V

    move-object v0, p1

    .line 1991
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$type(Ljava/lang/String;)V

    move-object v0, p1

    .line 1992
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$image()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$image(Ljava/lang/String;)V

    move-object v0, p1

    .line 1993
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$movie()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$movie(Ljava/lang/String;)V

    move-object v0, p1

    .line 1994
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$width()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$width(I)V

    move-object v0, p1

    .line 1995
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$height()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$height(I)V

    move-object v0, p1

    .line 1996
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$pictures_counter()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$pictures_counter(I)V

    move-object v0, p1

    .line 1997
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$media_added()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$media_added(Ljava/util/Date;)V

    move-object v0, p1

    .line 1998
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$title(Ljava/lang/String;)V

    move-object v0, p1

    .line 1999
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$url()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$url(Ljava/lang/String;)V

    move-object v0, p1

    .line 2000
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$vote_score()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$vote_score(I)V

    move-object v0, p1

    .line 2001
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$date()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$date(Ljava/util/Date;)V

    move-object v0, p1

    .line 2002
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$share_url()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$share_url(Ljava/lang/String;)V

    move-object v0, p1

    .line 2003
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$share_image()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$share_image(Ljava/lang/String;)V

    move-object v0, p1

    .line 2004
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$youtube()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$youtube(Ljava/lang/String;)V

    move-object v0, p2

    .line 2005
    check-cast v0, Lio/realm/f;

    invoke-interface {v0}, Lio/realm/f;->realmGet$pictures()Lio/realm/q;

    move-result-object v2

    move-object v0, p1

    .line 2006
    check-cast v0, Lio/realm/f;

    invoke-interface {v0}, Lio/realm/f;->realmGet$pictures()Lio/realm/q;

    move-result-object v3

    .line 2007
    invoke-virtual {v3}, Lio/realm/q;->clear()V

    .line 2008
    if-eqz v2, :cond_1

    .line 2009
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lio/realm/q;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2010
    invoke-virtual {v2, v1}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Picture;

    .line 2011
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Picture;

    .line 2012
    if-eqz v0, :cond_0

    .line 2013
    invoke-virtual {v3, v0}, Lio/realm/q;->a(Lio/realm/t;)Z

    .line 2009
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2015
    :cond_0
    invoke-virtual {v2, v1}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Picture;

    const/4 v4, 0x1

    invoke-static {p0, v0, v4, p3}, Lio/realm/PictureRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/Picture;ZLjava/util/Map;)Lpl/jbzd/app/model/Picture;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_1

    :cond_1
    move-object v0, p1

    .line 2019
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$comments_counter()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$comments_counter(I)V

    move-object v0, p1

    .line 2020
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$voted()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$voted(I)V

    move-object v0, p1

    .line 2021
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$ratio()F

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$ratio(F)V

    move-object v0, p1

    .line 2022
    check-cast v0, Lio/realm/f;

    move-object v1, p2

    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$in_queue()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$in_queue(Z)V

    move-object v0, p1

    .line 2023
    check-cast v0, Lio/realm/f;

    check-cast p2, Lio/realm/f;

    invoke-interface {p2}, Lio/realm/f;->realmGet$is_favorite()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/f;->realmSet$is_favorite(Z)V

    .line 2024
    return-object p1
.end method

.method public static a(Lio/realm/l;Lpl/jbzd/app/model/Media;ZLjava/util/Map;)Lpl/jbzd/app/model/Media;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Lpl/jbzd/app/model/Media;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)",
            "Lpl/jbzd/app/model/Media;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1457
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

    .line 1458
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1460
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

    .line 1490
    :goto_0
    return-object p1

    .line 1463
    :cond_1
    sget-object v2, Lio/realm/b;->g:Lio/realm/b$c;

    invoke-virtual {v2}, Lio/realm/b$c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/b$b;

    .line 1464
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/internal/l;

    .line 1465
    if-eqz v3, :cond_2

    .line 1466
    check-cast v3, Lpl/jbzd/app/model/Media;

    move-object p1, v3

    goto :goto_0

    .line 1468
    :cond_2
    const/4 v5, 0x0

    .line 1470
    if-eqz p2, :cond_5

    .line 1471
    const-class v3, Lpl/jbzd/app/model/Media;

    invoke-virtual {p0, v3}, Lio/realm/l;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v6

    .line 1472
    invoke-virtual {v6}, Lio/realm/internal/Table;->c()J

    move-result-wide v8

    move-object v3, p1

    .line 1473
    check-cast v3, Lio/realm/f;

    invoke-interface {v3}, Lio/realm/f;->realmGet$id()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v6, v8, v9, v10, v11}, Lio/realm/internal/Table;->b(JJ)J

    move-result-wide v8

    .line 1474
    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-eqz v3, :cond_3

    .line 1476
    :try_start_0
    invoke-virtual {v6, v8, v9}, Lio/realm/internal/Table;->f(J)Lio/realm/internal/UncheckedRow;

    move-result-object v4

    iget-object v3, p0, Lio/realm/l;->f:Lio/realm/RealmSchema;

    const-class v5, Lpl/jbzd/app/model/Media;

    invoke-virtual {v3, v5}, Lio/realm/RealmSchema;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lio/realm/b$b;->a(Lio/realm/b;Lio/realm/internal/n;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 1477
    new-instance v4, Lio/realm/MediaRealmProxy;

    invoke-direct {v4}, Lio/realm/MediaRealmProxy;-><init>()V

    .line 1478
    move-object v0, v4

    check-cast v0, Lio/realm/internal/l;

    move-object v3, v0

    invoke-interface {p3, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1480
    invoke-virtual {v2}, Lio/realm/b$b;->f()V

    move v2, p2

    .line 1487
    :goto_1
    if-eqz v2, :cond_4

    .line 1488
    invoke-static {p0, v4, p1, p3}, Lio/realm/MediaRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/Media;Lpl/jbzd/app/model/Media;Ljava/util/Map;)Lpl/jbzd/app/model/Media;

    move-result-object p1

    goto :goto_0

    .line 1480
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lio/realm/b$b;->f()V

    throw v3

    :cond_3
    move v2, v4

    move-object v4, v5

    .line 1483
    goto :goto_1

    .line 1490
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lio/realm/MediaRealmProxy;->b(Lio/realm/l;Lpl/jbzd/app/model/Media;ZLjava/util/Map;)Lpl/jbzd/app/model/Media;

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
    .line 1056
    const-string v0, "class_Media"

    return-object v0
.end method

.method public static b(Lio/realm/l;Lpl/jbzd/app/model/Media;ZLjava/util/Map;)Lpl/jbzd/app/model/Media;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Lpl/jbzd/app/model/Media;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)",
            "Lpl/jbzd/app/model/Media;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1496
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/l;

    .line 1497
    if-eqz v0, :cond_0

    .line 1498
    check-cast v0, Lpl/jbzd/app/model/Media;

    .line 1538
    :goto_0
    return-object v0

    .line 1501
    :cond_0
    const-class v1, Lpl/jbzd/app/model/Media;

    move-object v0, p1

    check-cast v0, Lio/realm/f;

    invoke-interface {v0}, Lio/realm/f;->realmGet$id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v3, v2}, Lio/realm/l;->a(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Media;

    move-object v1, v0

    .line 1502
    check-cast v1, Lio/realm/internal/l;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1503
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$user_id()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$user_id(I)V

    move-object v1, v0

    .line 1504
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$type()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$type(Ljava/lang/String;)V

    move-object v1, v0

    .line 1505
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$image()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$image(Ljava/lang/String;)V

    move-object v1, v0

    .line 1506
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$movie()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$movie(Ljava/lang/String;)V

    move-object v1, v0

    .line 1507
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$width()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$width(I)V

    move-object v1, v0

    .line 1508
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$height()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$height(I)V

    move-object v1, v0

    .line 1509
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$pictures_counter()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$pictures_counter(I)V

    move-object v1, v0

    .line 1510
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$media_added()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$media_added(Ljava/util/Date;)V

    move-object v1, v0

    .line 1511
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$title()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$title(Ljava/lang/String;)V

    move-object v1, v0

    .line 1512
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$url()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$url(Ljava/lang/String;)V

    move-object v1, v0

    .line 1513
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$vote_score()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$vote_score(I)V

    move-object v1, v0

    .line 1514
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$date()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$date(Ljava/util/Date;)V

    move-object v1, v0

    .line 1515
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$share_url()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$share_url(Ljava/lang/String;)V

    move-object v1, v0

    .line 1516
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$share_image()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$share_image(Ljava/lang/String;)V

    move-object v1, v0

    .line 1517
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$youtube()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$youtube(Ljava/lang/String;)V

    move-object v1, p1

    .line 1519
    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$pictures()Lio/realm/q;

    move-result-object v4

    .line 1520
    if-eqz v4, :cond_2

    move-object v1, v0

    .line 1521
    check-cast v1, Lio/realm/f;

    invoke-interface {v1}, Lio/realm/f;->realmGet$pictures()Lio/realm/q;

    move-result-object v5

    move v2, v3

    .line 1522
    :goto_1
    invoke-virtual {v4}, Lio/realm/q;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 1523
    invoke-virtual {v4, v2}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Picture;

    .line 1524
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Picture;

    .line 1525
    if-eqz v1, :cond_1

    .line 1526
    invoke-virtual {v5, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    .line 1522
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1528
    :cond_1
    invoke-virtual {v4, v2}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Picture;

    invoke-static {p0, v1, p2, p3}, Lio/realm/PictureRealmProxy;->a(Lio/realm/l;Lpl/jbzd/app/model/Picture;ZLjava/util/Map;)Lpl/jbzd/app/model/Picture;

    move-result-object v1

    invoke-virtual {v5, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 1533
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$comments_counter()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$comments_counter(I)V

    move-object v1, v0

    .line 1534
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$voted()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$voted(I)V

    move-object v1, v0

    .line 1535
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$ratio()F

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$ratio(F)V

    move-object v1, v0

    .line 1536
    check-cast v1, Lio/realm/f;

    move-object v2, p1

    check-cast v2, Lio/realm/f;

    invoke-interface {v2}, Lio/realm/f;->realmGet$in_queue()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$in_queue(Z)V

    move-object v1, v0

    .line 1537
    check-cast v1, Lio/realm/f;

    check-cast p1, Lio/realm/f;

    invoke-interface {p1}, Lio/realm/f;->realmGet$is_favorite()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/f;->realmSet$is_favorite(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    if-eqz v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 185
    :cond_0
    sget-object v0, Lio/realm/b;->g:Lio/realm/b$c;

    invoke-virtual {v0}, Lio/realm/b$c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/b$b;

    .line 186
    invoke-virtual {v0}, Lio/realm/b$b;->c()Lio/realm/internal/c;

    move-result-object v1

    check-cast v1, Lio/realm/MediaRealmProxy$a;

    iput-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    .line 187
    new-instance v1, Lio/realm/k;

    invoke-direct {v1, p0}, Lio/realm/k;-><init>(Lio/realm/t;)V

    iput-object v1, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    .line 188
    iget-object v1, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->a()Lio/realm/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/k;->a(Lio/realm/b;)V

    .line 189
    iget-object v1, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/k;->a(Lio/realm/internal/n;)V

    .line 190
    iget-object v1, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/k;->a(Z)V

    .line 191
    iget-object v1, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/b$b;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/k;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public c()Lio/realm/k;
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2047
    if-ne p0, p1, :cond_1

    .line 2061
    :cond_0
    :goto_0
    return v0

    .line 2048
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

    .line 2049
    :cond_3
    check-cast p1, Lio/realm/MediaRealmProxy;

    .line 2051
    iget-object v2, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v2

    .line 2052
    iget-object v3, p1, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v3

    .line 2053
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 2055
    :cond_6
    iget-object v2, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v2

    .line 2056
    iget-object v3, p1, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v3

    .line 2057
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 2059
    :cond_9
    iget-object v2, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

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

    .line 2034
    iget-object v1, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v1}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v1

    .line 2035
    iget-object v2, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v2}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v2

    .line 2036
    iget-object v3, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    .line 2039
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 2040
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 2041
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 2042
    return v0

    :cond_1
    move v1, v0

    .line 2039
    goto :goto_0
.end method

.method public realmGet$comments_counter()I
    .locals 4

    .prologue
    .line 649
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 650
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->r:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 4

    .prologue
    .line 483
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 484
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->m:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x0

    .line 487
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->m:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getDate(J)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public realmGet$height()I
    .locals 4

    .prologue
    .line 336
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 337
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$id()I
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 197
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$image()Ljava/lang/String;
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 261
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$in_queue()Z
    .locals 4

    .prologue
    .line 709
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 710
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->u:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$is_favorite()Z
    .locals 4

    .prologue
    .line 729
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 730
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->v:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$media_added()Ljava/util/Date;
    .locals 4

    .prologue
    .line 376
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 377
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x0

    .line 380
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getDate(J)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public realmGet$movie()Ljava/lang/String;
    .locals 4

    .prologue
    .line 288
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 289
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->e:J

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
    .line 597
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 599
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->c:Lio/realm/q;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->c:Lio/realm/q;

    .line 604
    :goto_0
    return-object v0

    .line 602
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->q:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v0

    .line 603
    new-instance v1, Lio/realm/q;

    const-class v2, Lpl/jbzd/app/model/Picture;

    iget-object v3, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v3}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/q;-><init>(Ljava/lang/Class;Lio/realm/internal/LinkView;Lio/realm/b;)V

    iput-object v1, p0, Lio/realm/MediaRealmProxy;->c:Lio/realm/q;

    .line 604
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->c:Lio/realm/q;

    goto :goto_0
.end method

.method public realmGet$pictures_counter()I
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 357
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$ratio()F
    .locals 4

    .prologue
    .line 689
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 690
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->t:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public realmGet$share_image()Ljava/lang/String;
    .locals 4

    .prologue
    .line 542
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 543
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->o:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$share_url()Ljava/lang/String;
    .locals 4

    .prologue
    .line 514
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 515
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->n:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 4

    .prologue
    .line 407
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 408
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 233
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .locals 4

    .prologue
    .line 435
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 436
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$user_id()I
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 213
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$vote_score()I
    .locals 4

    .prologue
    .line 463
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 464
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->l:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$voted()I
    .locals 4

    .prologue
    .line 669
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 670
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->s:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$width()I
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 317
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$youtube()Ljava/lang/String;
    .locals 4

    .prologue
    .line 570
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 571
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->p:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$comments_counter(I)V
    .locals 9

    .prologue
    .line 654
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 659
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/MediaRealmProxy$a;->r:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 663
    :cond_1
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 664
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->r:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$date(Ljava/util/Date;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 491
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 496
    if-nez p1, :cond_1

    .line 497
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/MediaRealmProxy$a;->m:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 500
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/MediaRealmProxy$a;->m:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/util/Date;Z)V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 505
    if-nez p1, :cond_3

    .line 506
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->m:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 509
    :cond_3
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->m:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setDate(JLjava/util/Date;)V

    goto :goto_0
.end method

.method public realmSet$height(I)V
    .locals 9

    .prologue
    .line 341
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 346
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/MediaRealmProxy$a;->g:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 351
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->g:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$id(I)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 207
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$image(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 265
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 270
    if-nez p1, :cond_1

    .line 271
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/MediaRealmProxy$a;->d:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 274
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/MediaRealmProxy$a;->d:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 279
    if-nez p1, :cond_3

    .line 280
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 283
    :cond_3
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->d:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$in_queue(Z)V
    .locals 8

    .prologue
    .line 714
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 719
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/MediaRealmProxy$a;->u:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->a(JJZZ)V

    goto :goto_0

    .line 723
    :cond_1
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 724
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->u:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$is_favorite(Z)V
    .locals 8

    .prologue
    .line 734
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 739
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/MediaRealmProxy$a;->v:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->a(JJZZ)V

    goto :goto_0

    .line 743
    :cond_1
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 744
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->v:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setBoolean(JZ)V

    goto :goto_0
.end method

.method public realmSet$media_added(Ljava/util/Date;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 384
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 389
    if-nez p1, :cond_1

    .line 390
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/MediaRealmProxy$a;->i:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 393
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/MediaRealmProxy$a;->i:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/util/Date;Z)V

    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 398
    if-nez p1, :cond_3

    .line 399
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 402
    :cond_3
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setDate(JLjava/util/Date;)V

    goto :goto_0
.end method

.method public realmSet$movie(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 293
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 298
    if-nez p1, :cond_1

    .line 299
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/MediaRealmProxy$a;->e:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 302
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/MediaRealmProxy$a;->e:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 307
    if-nez p1, :cond_3

    .line 308
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 311
    :cond_3
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->e:J

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
    .line 609
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 610
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    :cond_0
    return-void

    .line 613
    :cond_1
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->d()Ljava/util/List;

    move-result-object v0

    const-string v1, "pictures"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lio/realm/q;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 617
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    check-cast v0, Lio/realm/l;

    .line 619
    new-instance v2, Lio/realm/q;

    invoke-direct {v2}, Lio/realm/q;-><init>()V

    .line 620
    invoke-virtual {p1}, Lio/realm/q;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Picture;

    .line 621
    if-eqz v1, :cond_2

    invoke-static {v1}, Lio/realm/u;->isManaged(Lio/realm/t;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 622
    :cond_2
    invoke-virtual {v2, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_0

    .line 624
    :cond_3
    invoke-virtual {v0, v1}, Lio/realm/l;->a(Lio/realm/t;)Lio/realm/t;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 630
    :cond_5
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 631
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->q:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->getLinkList(J)Lio/realm/internal/LinkView;

    move-result-object v2

    .line 632
    invoke-virtual {v2}, Lio/realm/internal/LinkView;->a()V

    .line 633
    if-eqz p1, :cond_0

    .line 636
    invoke-virtual {p1}, Lio/realm/q;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/t;

    .line 637
    invoke-static {v0}, Lio/realm/u;->isManaged(Lio/realm/t;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lio/realm/u;->isValid(Lio/realm/t;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 638
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Each element of \'value\' must be a valid managed object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v1, v0

    .line 640
    check-cast v1, Lio/realm/internal/l;

    invoke-interface {v1}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v1

    iget-object v4, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v4}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v4

    if-eq v1, v4, :cond_8

    .line 641
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Each element of \'value\' must belong to the same Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
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
    .line 361
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 366
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/MediaRealmProxy$a;->h:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 371
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->h:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$ratio(F)V
    .locals 8

    .prologue
    .line 694
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 699
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/MediaRealmProxy$a;->t:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->a(JJFZ)V

    goto :goto_0

    .line 703
    :cond_1
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 704
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->t:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setFloat(JF)V

    goto :goto_0
.end method

.method public realmSet$share_image(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 547
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 552
    if-nez p1, :cond_1

    .line 553
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/MediaRealmProxy$a;->o:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 556
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/MediaRealmProxy$a;->o:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 560
    :cond_2
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 561
    if-nez p1, :cond_3

    .line 562
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->o:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 565
    :cond_3
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->o:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$share_url(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 519
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 524
    if-nez p1, :cond_1

    .line 525
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/MediaRealmProxy$a;->n:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 528
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/MediaRealmProxy$a;->n:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 532
    :cond_2
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 533
    if-nez p1, :cond_3

    .line 534
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->n:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 537
    :cond_3
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->n:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 412
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 417
    if-nez p1, :cond_1

    .line 418
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/MediaRealmProxy$a;->j:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 421
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/MediaRealmProxy$a;->j:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 425
    :cond_2
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 426
    if-nez p1, :cond_3

    .line 427
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 430
    :cond_3
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->j:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 237
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 242
    if-nez p1, :cond_1

    .line 243
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/MediaRealmProxy$a;->c:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 246
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/MediaRealmProxy$a;->c:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 251
    if-nez p1, :cond_3

    .line 252
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 255
    :cond_3
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 440
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 445
    if-nez p1, :cond_1

    .line 446
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/MediaRealmProxy$a;->k:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 449
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/MediaRealmProxy$a;->k:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 453
    :cond_2
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 454
    if-nez p1, :cond_3

    .line 455
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 458
    :cond_3
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->k:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$user_id(I)V
    .locals 9

    .prologue
    .line 217
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/MediaRealmProxy$a;->b:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 227
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->b:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$vote_score(I)V
    .locals 9

    .prologue
    .line 468
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 473
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/MediaRealmProxy$a;->l:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 477
    :cond_1
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 478
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->l:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$voted(I)V
    .locals 9

    .prologue
    .line 674
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 679
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/MediaRealmProxy$a;->s:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 683
    :cond_1
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 684
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->s:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$width(I)V
    .locals 9

    .prologue
    .line 321
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v2, Lio/realm/MediaRealmProxy$a;->f:J

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->a(JJJZ)V

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 331
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->f:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/n;->setLong(JJ)V

    goto :goto_0
.end method

.method public realmSet$youtube(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 575
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v4

    .line 580
    if-nez p1, :cond_1

    .line 581
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v0, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v0, Lio/realm/MediaRealmProxy$a;->p:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJZ)V

    goto :goto_0

    .line 584
    :cond_1
    invoke-interface {v4}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v1, v1, Lio/realm/MediaRealmProxy$a;->p:J

    invoke-interface {v4}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;Z)V

    goto :goto_0

    .line 588
    :cond_2
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 589
    if-nez p1, :cond_3

    .line 590
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->p:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/n;->setNull(J)V

    goto :goto_0

    .line 593
    :cond_3
    iget-object v0, p0, Lio/realm/MediaRealmProxy;->b:Lio/realm/k;

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MediaRealmProxy;->a:Lio/realm/MediaRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MediaRealmProxy$a;->p:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/n;->setString(JLjava/lang/String;)V

    goto :goto_0
.end method
