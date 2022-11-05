.class public Lcom/google/android/gms/internal/zzbnj;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzBd:Landroid/content/SharedPreferences;

.field private zzbYe:Lcom/google/android/gms/internal/zzbuk;

.field private zzbZb:Ljava/lang/String;

.field private zzbZc:Lcom/google/android/gms/internal/zzbuv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzbuk;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzbZb:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->mContext:Landroid/content/Context;

    const-string v0, "com.google.firebase.auth.api.Store.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnj;->zzbZb:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbuk;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    new-instance v0, Lcom/google/android/gms/internal/zzbuv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbuv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzbZc:Lcom/google/android/gms/internal/zzbuv;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzBd:Landroid/content/SharedPreferences;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbut;)Lcom/google/android/gms/internal/zzbnf;
    .locals 11

    const-string v0, "cachedTokenState"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbut;->zzjR(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuq;->zzadj()Ljava/lang/String;

    move-result-object v3

    const-string v0, "applicationName"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbut;->zzjR(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuq;->zzadj()Ljava/lang/String;

    move-result-object v4

    const-string v0, "anonymous"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbut;->zzjR(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuq;->getAsBoolean()Z

    move-result v5

    const-string v0, "2"

    const-string v1, "version"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbut;->zzjR(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbuq;->zzadn()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbuq;->zzadj()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const-string v0, "userInfos"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbut;->zzjS(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbun;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbun;->size()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/zzbun;->zzqT(I)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v9

    const-class v10, Lcom/google/android/gms/internal/zzbnd;

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/zzbuk;->zza(Lcom/google/android/gms/internal/zzbuq;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbnd;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lcom/google/firebase/a;->a(Ljava/lang/String;)Lcom/google/firebase/a;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzbnf;

    invoke-direct {v2, v0, v8}, Lcom/google/android/gms/internal/zzbnf;-><init>(Lcom/google/firebase/a;Ljava/util/List;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    const-class v4, Lcom/google/android/gms/internal/zzbmn;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzbuk;->zzf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbmn;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzbnf;->zza(Lcom/google/android/gms/internal/zzbmn;)V

    :cond_1
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/zzbnf;->zzaY(Z)Lcom/google/firebase/auth/d;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbnf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbnf;->zziz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbnf;

    return-object v2

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private zzi(Lcom/google/firebase/auth/d;)Ljava/lang/String;
    .locals 6

    new-instance v2, Lcom/google/android/gms/internal/zzbut;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbut;-><init>()V

    const-class v0, Lcom/google/android/gms/internal/zzbnf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/zzbnf;

    const-string v0, "cachedTokenState"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbnf;->zzVH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbut;->zzaG(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "applicationName"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbnf;->zzVF()Lcom/google/firebase/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbut;->zzaG(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    const-string v1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbut;->zzaG(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbnf;->zzWq()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v3, Lcom/google/android/gms/internal/zzbun;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzbun;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbnf;->zzWq()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbnd;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbnj;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/zzbuk;->zzaL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbnj;->zziA(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzbun;->zzc(Lcom/google/android/gms/internal/zzbuq;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "userInfos"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzbut;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbuq;)V

    :cond_1
    const-string v0, "anonymous"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbnf;->isAnonymous()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbut;->zza(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "version"

    const-string v1, "2"

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzbut;->zzaG(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbut;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static zziA(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbuv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbuv;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbuv;->zzjT(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzBd:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzBd:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzWs()Lcom/google/firebase/auth/d;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "com.google.firebase.auth.FIREBASE_USER"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbnj;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnj;->zzbZc:Lcom/google/android/gms/internal/zzbuv;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzbuv;->zzjT(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbuq;->zzado()Lcom/google/android/gms/internal/zzbut;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbut;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbut;->zzjR(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbuq;->zzadj()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbnj;->zza(Lcom/google/android/gms/internal/zzbut;)Lcom/google/android/gms/internal/zzbnf;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbuz; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public zzWt()V
    .locals 1

    const-string v0, "com.google.firebase.auth.FIREBASE_USER"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbnj;->clear(Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbmn;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/firebase/auth/d;->getUid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzbnj;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public zzao(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzBd:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public zze(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbnj;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnj;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/internal/zzbuk;->zzf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public zzf(Lcom/google/firebase/auth/d;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbnj;->zzi(Lcom/google/firebase/auth/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.firebase.auth.FIREBASE_USER"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzbnj;->zzao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public zzg(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/internal/zzbmn;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/firebase/auth/d;->getUid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/zzbmn;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzbnj;->zze(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbmn;

    return-object v0
.end method

.method public zzh(Lcom/google/firebase/auth/d;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/firebase/auth/d;->getUid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbnj;->clear(Ljava/lang/String;)V

    return-void
.end method

.method public zzp(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzBd:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnj;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzbuk;->zzaL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
