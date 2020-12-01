package ssau.esa.example.beans;

import ssau.esa.example.entity.Person;


import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Collection;

@Singleton
public class PersonBean {

    @PersistenceContext(unitName = "esa")
    private EntityManager em;

    public Collection<Person> findAll(){
        return em.createQuery("SELECT p FROM Person p", Person.class).getResultList();
    }
}
