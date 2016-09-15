package com.znaptag.cesium.util;

import java.util.Set;
import java.util.HashSet;

public class SetDifference<T>
{
    private Set<T> onlyInFirst;
    private Set<T> onlyInSecond;
    private Set<T> inBoth;

    public static <T> SetDifference<T> calculate(Set<T> a, Set<T> b) {
        SetDifference<T> diff = new SetDifference<>();

        diff.onlyInFirst.addAll(a);
        diff.onlyInFirst.removeAll(b);

        diff.onlyInSecond.addAll(b);
        diff.onlyInSecond.removeAll(a);

        diff.inBoth.addAll(a);
        diff.inBoth.retainAll(b);

        return diff;
    }

    private SetDifference() {
        onlyInFirst = new HashSet<>();
        onlyInSecond = new HashSet<>();
        inBoth = new HashSet<>();
    }

    public Set<T> onlyInFirst() { return onlyInFirst; }
    public Set<T> onlyInSecond() { return onlyInSecond; }
    public Set<T> inBoth() { return inBoth; }
}
