.class final Lcom/mobsandgeeks/saripaar/Reflector;
.super Ljava/lang/Object;
.source "Reflector.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    return-void
.end method

.method public static findGetDataMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;",
            ">;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    const/4 v4, 0x0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 132
    array-length v8, v7

    move v6, v2

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v3, v7, v6

    .line 133
    const-string v0, "getData"

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 135
    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 139
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 142
    :goto_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 143
    array-length v9, v5

    if-ne v9, v1, :cond_1

    const-class v9, Landroid/view/View;

    aget-object v5, v5, v2

    .line 144
    invoke-virtual {v9, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    .line 146
    :goto_2
    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    move-object v0, v3

    .line 152
    :goto_3
    return-object v0

    :cond_0
    move v0, v2

    .line 139
    goto :goto_1

    :cond_1
    move v5, v2

    .line 144
    goto :goto_2

    .line 132
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_3
    move-object v0, v4

    goto :goto_3
.end method

.method public static getAttributeMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAttributeValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 75
    invoke-static {v0, p1}, Lcom/mobsandgeeks/saripaar/Reflector;->getAttributeMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 77
    if-nez v2, :cond_0

    .line 78
    const-string v1, "Cannot find attribute \'%s\' in annotation \'%s\'."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 78
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    :goto_0
    return-object v0

    .line 86
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    .line 91
    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private static getMissingConstructorErrorMessage(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mobsandgeeks/saripaar/AnnotationRule;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 252
    const/4 v0, 0x0

    .line 253
    const-class v1, Lcom/mobsandgeeks/saripaar/ContextualAnnotationRule;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    const-string v0, "A constructor accepting a \'%s\' and a \'%s\' is required for %s."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/mobsandgeeks/saripaar/ValidationContext;

    aput-object v2, v1, v3

    .line 255
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 254
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_0
    :goto_0
    return-object v0

    .line 257
    :cond_1
    const-class v1, Lcom/mobsandgeeks/saripaar/AnnotationRule;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const-string v0, "\'%s\' should have a single-argument constructor that accepts a \'%s\' instance."

    new-array v1, v5, [Ljava/lang/Object;

    .line 260
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 258
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRuleDataType(Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-interface {p0}, Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;->value()Ljava/lang/Class;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 227
    invoke-static {v0, v1}, Lcom/mobsandgeeks/saripaar/Reflector;->getRuleTypeFromIsValidMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getRuleDataType(Ljava/lang/annotation/Annotation;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 210
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/mobsandgeeks/saripaar/Reflector;->getValidateUsingAnnotation(Ljava/lang/Class;)Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lcom/mobsandgeeks/saripaar/Reflector;->getRuleDataType(Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static getRuleTypeFromIsValidMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mobsandgeeks/saripaar/AnnotationRule;",
            ">;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 269
    const/4 v0, 0x0

    .line 270
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, p1, v1

    .line 271
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 273
    invoke-static {v4, v5}, Lcom/mobsandgeeks/saripaar/Reflector;->matchesIsValidMethodSignature(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    if-eqz v0, :cond_0

    .line 277
    const-string v0, "Found duplicate \'boolean isValid(T)\' method signature in \'%s\'."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 279
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 277
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Lcom/mobsandgeeks/saripaar/exception/SaripaarViolationException;

    invoke-direct {v1, v0}, Lcom/mobsandgeeks/saripaar/exception/SaripaarViolationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_0
    aget-object v0, v5, v2

    .line 270
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_2
    return-object v0
.end method

.method private static getValidateUsingAnnotation(Ljava/lang/Class;)Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;"
        }
    .end annotation

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 238
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 239
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 240
    const-class v5, Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 241
    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;

    .line 245
    :goto_1
    return-object v0

    .line 239
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static instantiateRule(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Lcom/mobsandgeeks/saripaar/ValidationContext;)Lcom/mobsandgeeks/saripaar/AnnotationRule;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mobsandgeeks/saripaar/AnnotationRule;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/mobsandgeeks/saripaar/ValidationContext;",
            ")",
            "Lcom/mobsandgeeks/saripaar/AnnotationRule;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobsandgeeks/saripaar/exception/SaripaarViolationException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 174
    :try_start_0
    const-class v0, Lcom/mobsandgeeks/saripaar/ContextualAnnotationRule;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mobsandgeeks/saripaar/ValidationContext;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 176
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 177
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 178
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/AnnotationRule;

    :goto_0
    move-object v1, v0

    .line 197
    :goto_1
    return-object v1

    .line 179
    :cond_0
    const-class v0, Lcom/mobsandgeeks/saripaar/AnnotationRule;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 181
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 182
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 183
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/AnnotationRule;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 187
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 186
    invoke-static {p0, v0}, Lcom/mobsandgeeks/saripaar/Reflector;->getMissingConstructorErrorMessage(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/mobsandgeeks/saripaar/exception/SaripaarViolationException;

    invoke-direct {v1, v0}, Lcom/mobsandgeeks/saripaar/exception/SaripaarViolationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :catch_1
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 191
    :catch_2
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 193
    :catch_3
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static isAnnotated(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 109
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 110
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 111
    if-eqz v0, :cond_1

    .line 115
    :cond_0
    return v0

    .line 109
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static matchesIsValidMethodSignature(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 290
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 292
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    .line 293
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 294
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 295
    const-string v3, "isValid"

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 296
    array-length v3, p1

    if-ne v3, v1, :cond_1

    move v3, v1

    .line 298
    :goto_1
    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 293
    goto :goto_0

    :cond_1
    move v3, v2

    .line 296
    goto :goto_1

    :cond_2
    move v1, v2

    .line 298
    goto :goto_2
.end method
